require 'rails_helper'

describe 'Last Airbender Service', :vcr do
  it 'can return a member' do
    find_member = LastAirbenderService.find_members("Azula")
    member = find_member.first

    expect(member).to be_a(Hash)

    expect(member).to have_key(:name)
    expect(member[:name]).to be_a(String)

    expect(member).to have_key(:photoUrl)
    expect(member[:photoUrl]).to be_a(String)

    expect(member).to have_key(:allies)
    expect(member[:allies]).to be_a(Array)

    expect(member).to have_key(:affiliation)
    expect(member[:affiliation]).to be_a(String)
  end
end
