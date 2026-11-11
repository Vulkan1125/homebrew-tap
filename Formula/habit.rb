class Habit < Formula
  desc "Terminal habit tracker with streaks, quotas, dated notes and a heatmap"
  homepage "https://github.com/Vulkan1125/habit-tracker"
  url "https://github.com/Vulkan1125/habit-tracker/releases/download/v0.10.0/habit-0.10.0-macos-universal.tar.gz"
  sha256 "de28f6c4a361971e31ad5e875e331f24325eb52097e851211139dc8f205f3bde"
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
