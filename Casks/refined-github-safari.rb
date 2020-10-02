cask "refined-github-safari" do
  version "2.1.15"
  sha256 "6bed4bc5e899ddbced4b863f3d822eb9d1f44ef54ccc59551091bf600c8a88ea"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.1.15/Refined-GitHub-for-Safari.zip"
  appcast "https://github.com/lautis/refined-github-safari/releases.atom"
  name "refined-github-safari"
  homepage "https://github.com/lautis/refined-github-safari"

  depends_on macos: '>= :mojave'

  app "Refined GitHub for Safari.app"

  zap delete: [
    "~/Library/Application Scripts/fi.lautanala.refined-github",
    "~/Library/Application Scripts/fi.lautanala.refined-github-extension",
    "~/Library/Containers/fi.lautanala.refined-github",
    "~/Library/Containers/fi.lautanala.refined-github-extenstion"
  ]
end
