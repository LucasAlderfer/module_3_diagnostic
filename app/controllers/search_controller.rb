class SearchController < ApplicationController

  def index
    @stations = NewSearch.new(params['q']).stations
  end

end
