class Habit < Formula
  desc "Terminal habit tracker with streaks, quotas, dated notes and a heatmap"
  homepage "https://github.com/Vulkan1125/habit-tracker"
  url "https://github.com/Vulkan1125/habit-tracker/releases/download/v0.9.0/habit-0.9.0-macos-universal.tar.gz"
  sha256 "dd3780dda1431679108f90ff7ad038e9851fb560be2180e85fb7d7b5bb786eed"
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
