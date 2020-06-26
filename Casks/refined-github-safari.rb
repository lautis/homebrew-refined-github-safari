cask "refined-github-safari" do
  version "2.0.41"
  sha256 "dadd7f5fd39184a9fe51baa0befa47a388a24688111e9f0fabb5946378a8cd25"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.41/Refined-GitHub-for-Safari.zip"
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
