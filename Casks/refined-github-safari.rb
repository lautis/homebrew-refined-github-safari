cask "refined-github-safari" do
  version "2.0.19"
  sha256 "903878c0bef0fbd0d73b94d23e60bea474ebffcb0aa236855eb1e1575bf374f4"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.19/Refined-GitHub-for-Safari.zip"
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
