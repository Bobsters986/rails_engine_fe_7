require 'rails_helper'

RSpec.describe Merchant do
  it 'exists' do
    merchant_info = {
      id: '1',
      attributes: {
        name: "Schroeder-Jerde"
      }
    }
    merchant = Merchant.new(merchant_info)

    expect(merchant).to be_a(Merchant)
    expect(merchant.id).to eq(1)
    expect(merchant.name).to eq("Schroeder-Jerde")
  end
end