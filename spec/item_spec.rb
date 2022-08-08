require './lib/item'

describe Item do
  before :each do
    @item_1 = Item.new({name: 'Peach', price: "$0.75"})
    @item_2 =  Item.new({name: 'Tomato', price: '$0.50'})
  end

  it 'exists' do
    expect(@item_1).to be_a(Item)
    expect(@item_2).to be_a(Item)
  end

  it 'has a name' do
    expect(@item_1.name).to eq('Peach')
    expect(@item_2.name).to eq('Tomato')
  end

  it 'has a price that is a float' do
    expect(@item_1.price).to eq(0.75)
    expect(@item_2.price).to eq(0.50)
  end







end