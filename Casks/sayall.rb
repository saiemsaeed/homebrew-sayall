cask "sayall" do
  version "0.2.6"
  sha256 "fa7d44551a404216f3a30f74485afe7b9327d367357eb7467f180e7945b10885"

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
