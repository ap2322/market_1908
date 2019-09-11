require 'minitest/autorun'
require 'minitest/pride'
require './lib/vendor'
require 'pry'

class VendorTest < Minitest::Test

  def setup
    @vendor = Vendor.new("Rocky Mountain Fresh")
  end

  def test_it_exists
    assert_instance_of Vendor, @vendor
  end

  def test_attributes_at_init
    expected_inventory = Hash.new(0)
    assert_equal "Rocky Mountain Fresh", @vendor.name
    assert_equal expected_inventory, @vendor.inventory
  end
end
