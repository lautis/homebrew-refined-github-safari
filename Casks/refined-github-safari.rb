cask "refined-github-safari" do
  version "2.0.31"
  sha256 "a558d0a6d31adf50644eadeaa2c260bff8e7a1b12698f3bb67e3143371e9fbb9"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.31/Refined-GitHub-for-Safari.zip"
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
