require "rails_helper"

RSpec.describe "Search Facade", :vcr do
  it "can get member data" do
    find_member = SearchFacade.find_members("Azula")
    member = find_member.first

    expect(member).to be_a(Member)
    expect(member.name).to eq("Azula")
    expect(member.photo.class).to eq(String)
    expect(member.allies.class).to eq(String)
    expect(member.affiliation.class).to eq(String)
  end
end
