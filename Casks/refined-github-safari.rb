cask "refined-github-safari" do
  version "2.0.18"
  sha256 "9cbeac3c4e33352592ee6f3a3c06d6bf6b145e50dadd0a29aaff11017a6d4a2d"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.18/Refined-GitHub-for-Safari.zip"
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
