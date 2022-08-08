require './lib/item'
require './lib/vendor'

describe Vendor do
  before :each do
    @item_1 = Item.new({name: 'Peach', price: "$0.75"})
    @item_2 =  Item.new({name: 'Tomato', price: '$0.50'})
    @item_3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
    @item_4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
    @vendor_1 = Vendor.new("Rocky Mountain Fresh")
    @vendor_2 = Vendor.new("Ba-Nom-a-Nom")
    @vendor_3 = Vendor.new("Palisade Peach Shack")
  end

  it 'has a name' do
    expect(@vendor_1.name).to eq("Rocky Mountain Fresh")
  end

  it 'initializes with an empty inventory hash' do
    expect(@vendor_1.inventory).to eq({})
  end

  it 'can check stock of an item' do
    expect(@vendor_1.check_stock(@item_1)).to eq(0)
  end

  it 'can stock an item' do
    @vendor_1.stock(@item_1, 30)
    expect(@vendor_1.check_stock(@item_1)).to eq(30)
    @vendor_1.stock(@item_1, 25)
    expect(@vendor_1.check_stock(@item_1)).to eq(55)
    @vendor_1.stock(@item_2, 12)
    expect(@vendor_1.check_stock(@item_2)).to eq(12)
  end

  it 'can tell a vendors potential revenue' do 
    @vendor_1.stock(@item_1, 35)
    @vendor_1.stock(@item_2, 7)
    @vendor_2.stock(@item_4, 50)
    @vendor_2.stock(@item_3, 25)
    @vendor_3.stock(@item_1, 65)
 
    expect(@vendor_1.potential_revenue).to eq(29.75)
    expect(@vendor_2.potential_revenue).to eq(345.00)
    expect(@vendor_3.potential_revenue).to eq(48.75)
  end
end