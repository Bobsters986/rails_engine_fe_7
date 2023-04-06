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

  describe "#merchant_items" do
    it "returns an array of item objects" do
      expect(facade.merchant_items('1')).to be_an(Array)
      expect(facade.merchant_items('1').first).to be_an(Item)
      expect(facade.merchant_items('1').first.name).to eq("Item Nemo Facere")
      expect(facade.merchant_items('1').first.description).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
      expect(facade.merchant_items('1').first.unit_price).to eq(42.91)
      expect(facade.merchant_items('1').first.merchant_id).to eq(1)
    end
  end

  describe "#all_items" do
    it "returns an array of item objects" do
      expect(facade.all_items).to be_an(Array)
      expect(facade.all_items.first).to be_an(Item)
      expect(facade.all_items.first.name).to eq("Item Nemo Facere")
      expect(facade.all_items.first.description).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
      expect(facade.all_items.first.unit_price).to eq(42.91)
      expect(facade.all_items.first.merchant_id).to eq(1)
    end
  end
end
