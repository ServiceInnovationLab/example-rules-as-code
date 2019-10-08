# frozen_string_literal: true

require 'minitest/autorun'
require 'yaml'

class TestBeardChecker < Minitest::Test
  def setup
    beards_file = File.read('../shared/example_beards.yml')
    @beards = YAML.load(beards_file)["beards"]
  end

  def test_beards
    @beards.each do |beard|
      # {"longer_than_5mm"=>true, "on_or_below_chin"=>false, "uninterrupted_below_nose"=>false, "outcome"=>false}
      checker = BeardChecker.new(length_in_mm: beard["length_in_mm"],
                       on_or_below_chin: beard["on_or_below_chin"],
                       unbroken_between_ears: beard["uninterrupted_below_nose"])

      assert_equal checker.is_beard?, beard["outcome"]
    end
  end
end
