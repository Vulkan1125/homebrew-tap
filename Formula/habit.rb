class Habit < Formula
  desc "Terminal habit tracker with streaks, quotas, dated notes and a heatmap"
  homepage "https://github.com/Vulkan1125/habit-tracker"
  url "https://github.com/Vulkan1125/habit-tracker/releases/download/v0.12.0/habit-0.12.0-macos-universal.tar.gz"
  sha256 "ab3d4e120fa0a51e0e4d14d6575ea9f3056257c50198b5be6c708f0212aa386e"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "habit", "habit-notify", "habit-report"
  end

  test do
    assert_match "habit #{version}", shell_output("#{bin}/habit --version")
    assert_predicate bin/"habit-notify", :executable?
    assert_predicate bin/"habit-report", :executable?
  end
end
