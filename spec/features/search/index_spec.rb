require 'rails_helper'

RSpec.describe 'Search index page' do
  describe 'User story 1', :vcr do
    it 'displays total number of people in selected nation along with attributes' do
      # As a user,
      # When I visit "/"
      visit root_path
      expect(page).to have_select(:nation)
      # And I Select "Fire Nation" from the select field
      select 'Fire Nation', from: :nation
      # (Note: Use the existing select field)
      # And I click "Search For Members"
      expect(page).to have_button 'Search For Members'
      click_on 'Search For Members'
      # Then I should be on page "/search"
      expect(current_path).to eq search_path
      # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
      expect(page).to have_css(".members")
      # And I should see a list with the detailed information for the first 25 members of the Fire Nation.
      within(first(".member")) do
        # - The name of the member (and their photo, if they have one)
        expect(page).to have_css(".name")
        # - The list of allies or "None"
        expect(page).to have_css(".allies")
        # - The list of enemies or "None"
        expect(page).to have_css(".enemies")
        # - Any affiliations that the member has
        expect(page).to have_css(".affiliations")
      end
      
    end
  end
end