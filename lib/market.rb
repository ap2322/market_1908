class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def check_stock(item_name)
    inventory[item_name]
  end

  def stock(item_name, quantity)
    inventory[item_name] += quantity
  end

  def add_vendor(vendor)
    vendors << vendor
  end

  def vendor_names
    vendors.map {|vendor| vendor.name}
  end

  def vendors_that_sell(item_name)
    vendors_with_item = vendors.find_all do |vendor|
      has_item = false
      vendor.inventory.each do |inv_item_name, quantity|
        if inv_item_name == item_name && quantity > 0
          has_item = true
        end
      end
      has_item
    end
    vendors_with_item
  end

  
end
