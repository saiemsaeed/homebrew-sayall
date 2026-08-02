cask "sayall" do
  version "0.1.8"
  sha256 "b4a04bfd2ab390d0d1f37981fe469e51452240c7b45c55457563c9f40ac40574"

  url "https://github.com/saiemsaeed/sayall/releases/download/v#{version}/sayall-#{version}-macos-arm64.zip"
  name "SayAll"
  desc "Voice dictation for Apple Silicon Macs"
  homepage "https://github.com/saiemsaeed/sayall"

  livecheck do
    skip "The release workflow updates this Cask from immutable assets"
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "SayAll.app"
  binary "#{appdir}/SayAll.app/Contents/Helpers/sayall"

  uninstall quit: "pro.leets.sayall"

  zap trash: [
    "~/.config/sayall",
    "~/Library/Application Support/SayAll",
  ]
end
