class SearchController < ApplicationController
  def index
    @members = SearchFacade.find_members(params[:nation])
  end
end
