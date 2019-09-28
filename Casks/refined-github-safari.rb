cask "refined-github-safari" do
  version "2.0.17"
  sha256 "03054168efacc278d3723a3470abbeb09217f138de1790d13218b331d069077a"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.17/Refined-GitHub-for-Safari.zip"
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
