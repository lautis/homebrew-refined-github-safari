cask "refined-github-safari" do
  version "2.0.22"
  sha256 "cc501917ae969a3d699c2f68c1adabe70ab265b123c40785a81fce450a5f33e4"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.22/Refined-GitHub-for-Safari.zip"
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
