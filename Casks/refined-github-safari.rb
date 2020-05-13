cask "refined-github-safari" do
  version "2.0.33"
  sha256 "23610000d7d608857c60f14b9773cd64fa3fe80cec7e52ea0e20b4e5403484fc"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.33/Refined-GitHub-for-Safari.zip"
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
