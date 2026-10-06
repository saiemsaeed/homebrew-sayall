cask "sayall" do
  version "0.3.3"
  sha256 "a0ecd112339aa6b783ffc8ea5a363c55e2217a9753ce5b39507f5d8e65a9807d"

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
