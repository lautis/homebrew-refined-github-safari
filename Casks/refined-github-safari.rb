cask "refined-github-safari" do
  version "2.0.44"
  sha256 "c6418f8bb16f50b4aa7af863cdd26e80c36f4ea4dd8e4000cfa9c0ce4ee92ab4"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.44/Refined-GitHub-for-Safari.zip"
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
