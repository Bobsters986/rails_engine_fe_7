require "rails_helper"

describe RailsEngineService do
  describe "#all_merchants" do
    it "returns all merchants" do
      merchants = RailsEngineService.new.all_merchants

      expect(merchants[:data]).to be_an(Array)

      expect(merchants[:data].first).to have_key(:id)
      expect(merchants[:data].first[:id]).to be_a(String)

      expect(merchants[:data].first).to have_key(:type)
      expect(merchants[:data].first[:type]).to be_a(String)

      expect(merchants[:data].first).to have_key(:attributes)
      expect(merchants[:data].first[:attributes]).to be_a(Hash)

      expect(merchants[:data].first[:attributes]).to have_key(:name)
      expect(merchants[:data].first[:attributes][:name]).to be_a(String)
      expect(merchants[:data].first[:attributes][:name]).to eq("Schroeder-Jerde")
      expect(merchants[:data].second[:attributes][:name]).to eq("Klein, Rempel and Jones")
      expect(merchants[:data].third[:attributes][:name]).to eq("Willms and Sons")
    end
  end
end