require "rails_helper"

describe MerchantService do
  describe "#all_merchants" do
    before do
    end

    it "returns all merchants" do
      merchants = MerchantService.new.all_merchants

      expect(merchants).to be_an(Array)

      expect(merchants.first).to have_key(:id)
      expect(merchants.first[:id]).to be_a(String)

      expect(merchants.first).to have_key(:type)
      expect(merchants.first[:type]).to be_a(String)

      expect(merchants.first).to have_key(:attributes)
      expect(merchants.first[:attributes]).to be_a(Hash)

      expect(merchants.first[:attributes]).to have_key(:name)
      expect(merchants.first[:attributes][:name]).to be_a(String)
      expect(merchants.first[:attributes][:name]).to eq("Schroeder-Jerde")
      expect(merchants.second[:attributes][:name]).to eq("Klein, Rempel and Jones")
      expect(merchants.third[:attributes][:name]).to eq("Willms and Sons")
    end
  end
end