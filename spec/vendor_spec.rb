require './lib/item'
require './lib/vendor'

describe Vendor do
  before :each do
    @item_1 = Item.new({name: 'Peach', price: "$0.75"})
    @item_2 =  Item.new({name: 'Tomato', price: '$0.50'})
    @vendor = Vendor.new("Rocky Mountain Fresh")
  end

  it 'has a name' do
    expect(@vendor.name).to eq("Rocky Mountain Fresh")
  end

  it 'initializes with an empty inventory hash' do
    expect(@vendor.inventory).to eq({})
  end

  it 'can check stock of an item' do
    expect(@vendor.check_stock(@item_1)).to eq(0)
  end

  it 'can stock an item' do
    @vendor.stock(@item_1, 30)
    expect(@vendor.check_stock(@item_1)).to eq(30)
    @vendor.stock(@item_1, 25)
    expect(@vendor.check_stock(@item_1)).to eq(55)
    @vendor.stock(@item_2, 12)
    expect(@vendor.check_stock(@item_2)).to eq(12)
  end


  

end