cask "sayall" do
  version "0.2.4"
  sha256 "a3b1631bc03d248370068fa54df27661e9abedd460291252d31a232a09747682"

  url "https://github.com/saiemsaeed/sayall/releases/download/v#{version}/sayall-#{version}-macos-arm64.dmg"
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
