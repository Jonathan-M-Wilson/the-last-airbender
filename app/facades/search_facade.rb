class SearchFacade

  def self.find_members(nation)
    member = get_member_data(nation)
    member.map do |member_info|
      Member.new(member_info)
    end 
  end


  def self.get_member_data(nation)
    LastAirbenderService.find_members(nation)
  end
end
