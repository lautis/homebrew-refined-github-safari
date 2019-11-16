cask "refined-github-safari" do
  version "2.0.21"
  sha256 "cb4dcc957a29692f491556e924be1d13ef13d591fa57480cea74ffdc15c7f1da"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.21/Refined-GitHub-for-Safari.zip"
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
