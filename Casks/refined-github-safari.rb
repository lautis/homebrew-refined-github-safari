cask "refined-github-safari" do
  version "2.0.37"
  sha256 "c789852077f470e39efd7abba6a3f28d41416fb6a06fc0922bdacf9f6e71a6ec"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.37/Refined-GitHub-for-Safari.zip"
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
