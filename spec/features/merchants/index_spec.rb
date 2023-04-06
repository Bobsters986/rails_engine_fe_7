require "rails_helper"

RSpec.describe "Merchant Index Page" do
  before do
    visit "/merchants"
  end

  it "displays all merchant names as links to their show page" do
    within "#merchants" do
      expect(page).to have_link("Schroeder-Jerde")
      expect(page).to have_link("Klein, Rempel and Jones")
      expect(page).to have_link("Willms and Sons")
      expect(page).to have_link("Cummings-Thiel")
      expect(page).to have_link("Williamson Group")
      click_link "Schroeder-Jerde"
    end
    expect(current_path).to eq("/merchants/1")
  end
end