cask "refined-github-safari" do
  version "2.0.36"
  sha256 "79b4a5bcdfb989562a7d50c9edb0ef326ee809d9d7a52c90a9b30df2442ca1d3"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.36/Refined-GitHub-for-Safari.zip"
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
