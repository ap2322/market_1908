class Vendor
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item_name)
    inventory[item_name]
  end

  def stock(item_name, quantity)
    inventory[item_name] += quantity
  end
end
