require 'rails_helper'

RSpec.describe 'Merchant Index Page' do
  before do
    visit '/merchants'
  end

  it 'displays all merchant names' do
    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
    expect(page).to have_content("Willms and Sons")
    expect(page).to have_content("Cummings-Thiel")
    expect(page).to have_content("Williamson Group")
  end
end