class Vendor
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    inventory[item]
  end

  def stock(ingredient, amount)
    inventory[ingredient] += amount
  end
  
  def potential_revenue
    inventory.sum do |item, amount|
      item.price * amount
    end
  end
end
