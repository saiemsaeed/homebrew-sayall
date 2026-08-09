cask "sayall" do
  version "0.2.11"
  sha256 "959b8a66d591d33ea709db97aa4d793b57ac1ec5321517e2c72f50f5c7bd35a1"

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
