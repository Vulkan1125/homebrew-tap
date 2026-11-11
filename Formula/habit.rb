class Habit < Formula
  desc "Terminal habit tracker with streaks, quotas, dated notes and a heatmap"
  homepage "https://github.com/Vulkan1125/habit-tracker"
  url "https://github.com/Vulkan1125/habit-tracker/releases/download/v0.7.0/habit-0.7.0-macos-universal.tar.gz"
  sha256 "9bda0498c507fc3209f7ac71a35b61820189c6fa9621eda4aad142216f79d982"
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
