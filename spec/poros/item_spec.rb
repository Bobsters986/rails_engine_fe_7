require 'rails_helper'

RSpec.describe Item do
  it 'exists' do
    item_info = {
      id: '1',
      attributes: {
        name: "New Item",
        description: "Dang thats one cool item!",
        unit_price: 420.69,
        merchant_id: 1
      }
    }
    item = Item.new(item_info)

    expect(item).to be_a(Item)
    expect(item.id).to eq('1')
    expect(item.name).to eq("New Item")
    expect(item.description).to eq("Dang thats one cool item!")
    expect(item.unit_price).to eq(420.69)
    expect(item.merchant_id).to eq(1)
  end
end