require "rails_helper"

RSpec.describe "Items Index Page" do
  before do
    visit "/items"
  end

  it "displays all item names as links to their show page" do
    within "#items" do
      expect(page).to have_link("Item Nemo Facere")
      expect(page).to have_link("Item Expedita Aliquam")
      expect(page).to have_link("Item Provident At")
      expect(page).to have_link("Item Expedita Fuga")
      expect(page).to have_link("Item Est Consequuntur")
      click_link "Item Nemo Facere"
    end
    expect(current_path).to eq("/items/4")
  end
end