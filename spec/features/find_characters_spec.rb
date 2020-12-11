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

      within(".members_information") do
        expect(page).to have_css(".name")
        expect(page).to have_css(".photo")
        expect(page).to have_css(".allies")
        expect(page).to have_css(".affiliation")
      end

      expect(page).to have_css(".total_members", count: 16)
      expect(page).to have_content("Total Results: 20")
    end
  end
end


# Then I should see the total number of people who live in the Fire Nation. (i.e. 20)

# And I should see a list with the detailed information for the 20 members of the Fire Nation.
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies and a list of enemies
# - Any affiliation that the member has
