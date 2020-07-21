cask "refined-github-safari" do
  version "2.1.0"
  sha256 "a28c71d0bf85eb5e8ef0c9b602c230db67d69213d3628e264502bf993245cc36"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.1.0/Refined-GitHub-for-Safari.zip"
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
