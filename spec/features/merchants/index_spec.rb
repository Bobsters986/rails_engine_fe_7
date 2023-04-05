require 'rails_helper'

RSpec.describe 'Merchant Index Page' do
  before do
    visit '/merchants'
  end

  it 'displays all merchant names as links' do
    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Klein, Rempel and Jones")
    expect(page).to have_link("Willms and Sons")
    expect(page).to have_link("Cummings-Thiel")
    expect(page).to have_link("Williamson Group")
  end
end