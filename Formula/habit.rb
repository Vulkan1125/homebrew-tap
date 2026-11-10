class Habit < Formula
  desc "Terminal habit tracker with streaks, quotas, dated notes and a heatmap"
  homepage "https://github.com/Vulkan1125/habit-tracker"
  url "https://github.com/Vulkan1125/habit-tracker/releases/download/v0.5.0/habit-0.5.0-macos-universal.tar.gz"
  sha256 "8edd557b85868d6ff41bd31ed4f421a9e7c0a8b39336a48d519ac6f3e54ef139"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "habit"
  end

  test do
    assert_match "habit #{version}", shell_output("#{bin}/habit --version")
  end
end
