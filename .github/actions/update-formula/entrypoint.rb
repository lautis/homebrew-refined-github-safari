require "erb"
require "digest"
require "octokit"

TEMPLATE_PATH = File.join(__dir__, "refined-github-safari.rb.erb").freeze

def client
  @client ||= Octokit::Client.new(access_token: ENV["GITHUB_TOKEN"])
end

def release_checksum(download_url)
  release = client.get(download_url)
  sha256 = Digest::SHA256.hexdigest(release)
end

def current_version
  version_regex = /version\s+["'](.*)["']/
  content = File.read("Casks/refined-github-safari.rb")
  content.scan(version_regex)[0][0]
rescue Errno::ENOENT
  nil
end

def version(release)
  release.tag_name.slice(1...)
end

def write_cask_formula(result)
  File.open("Casks/refined-github-safari.rb", "w") do |file|
    file.write(result)
  end
end

def update_cask_formula(release)
  version = release.tag_name.slice(1...)
  download_url = release.assets.first[:browser_download_url]
  sha_256 = release_checksum(download_url)

  result = ERB.new(File.read(TEMPLATE_PATH)).result(binding)
  write_cask_formula(result)
  git_commit(version)
end

def git_commit(version)
  `git config user.name "GitHub Actions"`
  `git config user.email "github-actions-bot@users.noreply.github.com"`
  `git add .`
  `git commit -m "refined-github-safari #{version}"`
end


release = client.latest_release("lautis/refined-github-safari")
update_cask_formula(release) if version(release) != current_version
