cask "refined-github-safari" do
  version "2.0.40"
  sha256 "67a881d66ad481285d61fadff8e450340e45e34b31b0daafbd8c3172ffebce0e"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.40/Refined-GitHub-for-Safari.zip"
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
