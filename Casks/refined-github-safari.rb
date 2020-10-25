cask "refined-github-safari" do
  version "2.1.19"
  sha256 "09e72073e4ee900579d6b4687f7c8312ff625c0351fe3d1f5e55e274e78c447e"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.1.19/Refined-GitHub-for-Safari.zip"
  appcast "https://github.com/lautis/refined-github-safari/releases.atom"
  name "refined-github-safari"
  homepage "https://github.com/lautis/refined-github-safari"

  depends_on macos: '>= :mojave'

  app "Refined GitHub for Safari.app"

  zap delete: [
    "~/Library/Application Scripts/fi.lautanala.refined-github",
    "~/Library/Application Scripts/fi.lautanala.refined-github-extension",
    "~/Library/Containers/fi.lautanala.refined-github",
    "~/Library/Containers/fi.lautanala.refined-github-extenstion"
  ]
end
