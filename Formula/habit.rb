class Habit < Formula
  desc "Terminal habit tracker with streaks, quotas, dated notes and a heatmap"
  homepage "https://github.com/Vulkan1125/habit-tracker"
  url "https://github.com/Vulkan1125/habit-tracker/releases/download/v0.6.0/habit-0.6.0-macos-universal.tar.gz"
  sha256 "0a0cfe6c936a1180f64870c4f7e4fbe5ea9d4f2fea364b7e939f76d9467ff504"
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
