require "rails_helper"

describe RailsEngineService do
  let(:service) { RailsEngineService.new }

  describe "#all_merchants" do
    it "returns all merchants" do
      merchants_response = service.all_merchants

      expect(merchants_response).to be_an(Array)
      expect(merchants_response.first.keys).to eq([:id, :type, :attributes])
      expect(merchants_response.first[:attributes]).to be_a(Hash)
      expect(merchants_response.first[:attributes]).to have_key(:name)
      expect(merchants_response.first[:attributes][:name]).to eq("Schroeder-Jerde")
    end
  end

  describe "#merchant_items" do
    it "returns all items for a merchant" do
      merchant_items_response = service.merchant_items(1)

      expect(merchant_items_response).to be_an(Array)
      expect(merchant_items_response.first.keys).to eq([:id, :type, :attributes])
      expect(merchant_items_response.first[:attributes]).to be_a(Hash)
      expect(merchant_items_response.first[:attributes].keys).to eq([:name, :description, :unit_price, :merchant_id])
      expect(merchant_items_response.first[:attributes][:name]).to eq("Item Nemo Facere")
      expect(merchant_items_response.first[:attributes][:description]).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
      expect(merchant_items_response.first[:attributes][:unit_price]).to eq(42.91)
      expect(merchant_items_response.first[:attributes][:merchant_id]).to eq(1)
    end
  end
end