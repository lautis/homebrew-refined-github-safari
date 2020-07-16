cask "refined-github-safari" do
  version "2.0.45"
  sha256 "07e862faa4214d12bd1ac7816d28a39aca91231a322fef824ebab42f04e01fb9"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.45/Refined-GitHub-for-Safari.zip"
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
