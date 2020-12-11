class Member
  attr_reader :name,
              :photo,
              :allies,
              :affiliation

  def initialize(data)
    @name = data[:name]
    @photo = data[:photoUrl]
    @allies = data[:allies].join(", ")
    @affiliation = data[:affiliation]
  end
end
