class Habit < Formula
  desc "Terminal habit tracker with streaks, quotas, dated notes and a heatmap"
  homepage "https://github.com/Vulkan1125/habit-tracker"
  url "https://github.com/Vulkan1125/habit-tracker/releases/download/v0.4.0/habit-0.4.0-macos-universal.tar.gz"
  sha256 "a976283137f70ecb066264105c66da04d94a842a8e121890f11bfbf9dedaea35"
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
