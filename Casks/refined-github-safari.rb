cask "refined-github-safari" do
  version "2.0.23"
  sha256 "4eaccda18365f2a24586bc44924de40c994bb30467ac5e590ef247d94559ffdd"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.23/Refined-GitHub-for-Safari.zip"
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
