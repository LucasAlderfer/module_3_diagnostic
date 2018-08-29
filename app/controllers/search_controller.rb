class SearchController < ApplicationController

  def index
    @stations = NewSearch.new(params['q']).make_stations

  end

end
