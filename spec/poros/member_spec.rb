require "rails_helper"

RSpec.describe Member do
  it "exists with attributes", :vcr do

    json_member_data = File.read('spec/fixtures/poros/circus_master.json')

    member_data = JSON.parse(json_member_data, symbolize_names: true)

    member = Member.new(member_data)

    expect(member).to be_a Member
    expect(member.name).to eq("Circus master")
    expect(member.photo.class).to eq(String)
    expect(member.allies).to eq("Ty Lee")
    expect(member.affiliation).to eq("Fire Nation circus")
  end
end
