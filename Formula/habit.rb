class Habit < Formula
  desc "Terminal habit tracker with streaks, quotas, dated notes and a heatmap"
  homepage "https://github.com/Vulkan1125/habit-tracker"
  url "https://github.com/Vulkan1125/habit-tracker/releases/download/v0.11.0/habit-0.11.0-macos-universal.tar.gz"
  sha256 "732bb25ceace30101c594849404361a908b4a679c2a027217281c5ec386199ad"
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
