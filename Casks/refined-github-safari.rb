cask "refined-github-safari" do
  version "2.0.16"
  sha256 "a69236312d0424cd391a78eac850c11ebb12fc7539b87dc6fc6dbb2bc008c7be"

  url "https://github.com/lautis/refined-github-safari/releases/download/v2.0.16/Refined-GitHub-for-Safari.zip"
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
