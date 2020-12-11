class SearchController < ApplicationController
  def index
     nation = params[:nation]

    if nation = 'fire_nation'
      nation = 'Fire Nation'
    end
    @members_of_nation = get_json("/api/v1/characters?affiliation=#{nation}")
  end

  private

  def conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/')
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
