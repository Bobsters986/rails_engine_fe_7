require "rails_helper"

RSpec.describe "Merchant Show Page" do
  it "displays the merchant's name and items" do
    visit "/merchants/1"

    expect(page).to have_content("Schroeder-Jerde")

    within "#items" do
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
      expect(page).to have_content("Item Provident At")
      expect(page).to have_content("Item Expedita Fuga")
      expect(page).to have_content("Item Est Consequuntur")
    end
  end
end