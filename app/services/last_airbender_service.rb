class LastAirbenderService

  def self.find_members(nation)
    if nation == 'fire_nation'
      nation = 'Fire Nation'
    end
    get_json("/api/v1/characters?affiliation=#{nation}")
  end

  def self.conn
    private
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/')
  end

  def self.get_json(url)
    private
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
