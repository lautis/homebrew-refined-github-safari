cask "refined-github-safari" do
  version "2.0.25"
  sha256 "90e368a9cb85c83152a3b584c492d36b3f842b108f1a42a5159dac776b65f799"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.25/Refined-GitHub-for-Safari.zip"
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
