cask "refined-github-safari" do
  version "2.0.26"
  sha256 "03c1a64c403dcbe3a27065582eca1b80f3cb97ffa918b4a6a0394cc31914db50"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.26/Refined-GitHub-for-Safari.zip"
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
