class Market
  attr_reader :name,
              :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    vendors << vendor
  end

  def vendor_names
    vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    vendors.find_all do |vendor|
      vendor.inventory.include?(item)
    end
  end

  # def total_inventory
  #   vendors.map do |vendor|
  #     {
  #       item => {
  #         quantity:
  #         vendors:
  #       }
  #     }
  #     end
  #   end

  def overstocked_items
    overstocked_items =
    vendors.flat_map do |vendor|
      vendor.inventory.find_all do |item, amount|
        vendors_that_sell(item).length >=2 && vendor.check_stock(item) >= 50
      end
    end.flatten
    [overstocked_items[0]]
  end
 



end
