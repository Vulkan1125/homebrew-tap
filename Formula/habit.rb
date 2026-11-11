class Habit < Formula
  desc "Terminal habit tracker with streaks, quotas, dated notes and a heatmap"
  homepage "https://github.com/Vulkan1125/habit-tracker"
  url "https://github.com/Vulkan1125/habit-tracker/releases/download/v0.8.0/habit-0.8.0-macos-universal.tar.gz"
  sha256 "3fcc8367812280ded3f8c60c9be4924584ee4f08bc04fa6d9d3676354ae6678e"
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
