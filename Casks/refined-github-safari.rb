cask "refined-github-safari" do
  version "2.0.38"
  sha256 "14e2d9882a3821165152036aaaff738cc719f01356a29ea709b73f93ac44e160"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.38/Refined-GitHub-for-Safari.zip"
  appcast "https://github.com/lautis/refined-github-safari/releases.atom"
  name "refined-github-safari"
  homepage "https://github.com/lautis/refined-github-safari"

  app "Refined GitHub for Safari.app"

  zap delete: [
    "~/Library/Application Scripts/fi.lautanala.refined-github",
    "~/Library/Application Scripts/fi.lautanala.refined-github-extension",
    "~/Library/Containers/fi.lautanala.refined-github",
    "~/Library/Containers/fi.lautanala.refined-github-extenstion"
  ]
end
