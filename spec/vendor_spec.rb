require './lib/item'
require './lib/vendor'

describe Item do
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
