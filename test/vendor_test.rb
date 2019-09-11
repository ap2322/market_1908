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

  def test_check_and_add_stock
    assert_equal 0, @vendor.check_stock("Peaches")
    @vendor.stock("Peaches", 30)

    assert_equal 30, @vendor.check_stock("Peaches")
    @vendor.stock("Peaches", 25)

    assert_equal 55, @vendor.check_stock("Peaches")
    @vendor.stock("Tomatoes", 12)

    expected_inventory = {"Peaches" => 55, "Tomatoes" => 12}

    assert_equal expected_inventory, @vendor.inventory
  end
end
