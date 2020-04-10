cask "refined-github-safari" do
  version "2.0.29"
  sha256 "999fc29c0642a0be54f25782172c2f58a5952b56026097059cdda3794623301b"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.29/Refined-GitHub-for-Safari.zip"
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
