cask "transcribe" do
  arch arm: "arm", intel: "intel"

  on_catalina :or_older do
    version "8.75.2"
    sha256 "f01781100cd3b9987c8f8892145a2eaa358df07b92e10e26f30b6a877f5b352c"

    url "https://www.seventhstring.com/xscribe/downmo/transcribe#{version.no_dots}.dmg"

    livecheck do
      skip "Legacy version"
    end

    zap trash: [
      "~/Library/Preferences/com.seventhstring.transcribe.plist",
      "~/Library/Preferences/Transcribe!#{version.major} Preferences",
    ]
  end
  on_big_sur do
    version "9.21"
    sha256 :no_check

    on_arm do
      url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe_arm.dmg"
    end
    on_intel do
      url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe.dmg"
    end

    livecheck do
      skip "Legacy version"
    end

    zap trash: [
      "~/Library/Preferences/com.seventhstring.transcribe.plist",
      "~/Library/Preferences/Transcribe!#{version.major} Preferences",
    ]
  end
  on_monterey do
    version "9.21"
    sha256 :no_check

    on_arm do
      url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe_arm.dmg"
    end
    on_intel do
      url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe.dmg"
    end

    livecheck do
      skip "Legacy version"
    end

    zap trash: [
      "~/Library/Preferences/com.seventhstring.transcribe.plist",
      "~/Library/Preferences/Transcribe!#{version.major} Preferences",
    ]
  end
  on_ventura :or_newer do
    version "9.40.1"
    sha256 arm:   "861cf4637ae854a2b199d0f9f7d41ced5726a523671a6f5aa8a80108b732b8cc",
           intel: "70fd989b831ee5e836cdb0b93804e2fe764e4dc4ced516c67d01c9a9dbf6ba07"

    url "https://www.seventhstring.com/xscribe/downmo/transcribe-#{arch}-#{version}.dmg"

    livecheck do
      url "https://www.seventhstring.com/xscribe/download_mac.html"
      regex(/transcribe[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    end

    zap trash: [
      "~/Library/Preferences/com.seventhstring.transcribe.plist",
      "~/Library/Preferences/Transcribe!#{version.major} Preferences",
    ]
  end

  name "Transcribe!"
  desc "Transcribes recorded music"
  homepage "https://www.seventhstring.com/xscribe/overview.html"

  app "Transcribe!.app"

  uninstall quit: "com.seventhstring.transcribe"
end
