require './lib/item'
require './lib/vendor'
require './lib/market'

describe Market do
  before :each do
    @item_1 = Item.new({name: 'Peach', price: "$0.75"})
    @item_2 =  Item.new({name: 'Tomato', price: '$0.50'})
    @item_3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
    @item_4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
    @vendor_1 = Vendor.new("Rocky Mountain Fresh")
    @vendor_2 = Vendor.new("Ba-Nom-a-Nom")
    @vendor_3 = Vendor.new("Palisade Peach Shack")
    @market = Market.new("South Pearl Street Farmers Market")
  end

  it 'exists' do
    expect(@market).to be_a(Market)
  end

  it 'has a name' do
    expect(@market.name).to eq("South Pearl Street Farmers Market")
  end

  it 'initializes with an empty vendors array' do
    expect(@market.vendors).to eq([])
  end

  it 'can add vendors' do
    @market.add_vendor(@vendor_1)
    @market.add_vendor(@vendor_2)
    expect(@market.vendors).to eq([@vendor_1, @vendor_2])
    @market.add_vendor(@vendor_3)
    expect(@market.vendors).to eq([@vendor_1, @vendor_2, @vendor_3])
  end

  xit 'can list all vendor names' do
    @market.add_vendor(@vendor_1)
    @market.add_vendor(@vendor_2)
    @market.add_vendor(@vendor_3)
    expect(@market.vendor_names).to eq(["Rocky Mountain Fresh", "Ba-Nom-a-Nom", "Palisade Peach Shack"])
  end




end