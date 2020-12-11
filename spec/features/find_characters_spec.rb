require "rails_helper"

RSpec.describe 'As a user,', type: :feature do
  describe 'When I select "Fire Nation" from the form and click on "Search For Members"' do
    before :each do
      visit root_path
      select 'Fire Nation', from: :nation
      click_on 'Search For Members'
    end

    it "I see name, description, direction info, hours of operation, and total number of parks found" do
      expect(current_path).to eq("/search")
      expect(page).to have_css(".members_information")

      within first(".members_information")do
        expect(page).to have_css(".name")
        expect(page).to have_css(".photo")
        expect(page).to have_css(".allies")
        expect(page).to have_css(".affiliation")
      end

      expect(page).to have_content("Total Results: 20")
    end
  end
end
