require 'rails_helper'

feature "User can visit root page" do
  scenario "and view navbar contents" do
    visit "/"
    within(".navbar") do
      expect(page).to have_content("AltFuelFinder")
      expect(page).to have_selector("input[value='Search by zip...']")
    end
  end
  it 'can generate a list of the 10 closest stations to the entered zip codes within 6 miles sorted by distance, limited to electric and propane, and it should show the name, address, fuel types, distance and access times for each station' do
    visit '/'

    
  end
end
