require "rails_helper"

describe RailsEngineService do
  describe "#all_merchants" do
    it "returns all merchants" do
      merchants_response = RailsEngineService.new.all_merchants

      expect(merchants_response).to be_an(Array)
      expect(merchants_response.first.keys).to eq([:id, :type, :attributes])
      expect(merchants_response.first[:attributes]).to be_a(Hash)
      expect(merchants_response.first[:attributes]).to have_key(:name)
      expect(merchants_response.first[:attributes][:name]).to be_a(String)
      expect(merchants_response.first[:attributes][:name]).to eq("Schroeder-Jerde")
    end
  end
end