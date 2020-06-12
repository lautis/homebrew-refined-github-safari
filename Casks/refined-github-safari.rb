cask "refined-github-safari" do
  version "2.0.39"
  sha256 "4c7428abc47dba304c37f1f7284c689f45b6d8dcd408a52849ac08ae603a3874"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.39/Refined-GitHub-for-Safari.zip"
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
