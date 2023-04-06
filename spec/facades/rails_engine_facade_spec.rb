require "rails_helper"

describe RailsEngineFacade do
  let(:facade) { RailsEngineFacade.new }

  describe "#all_merchants" do
    it "returns an array of merchant objects" do
      expect(facade.all_merchants).to be_an(Array)
      expect(facade.all_merchants.first).to be_a(Merchant)
      expect(facade.all_merchants.first.name).to eq("Schroeder-Jerde")
    end
  end

end
