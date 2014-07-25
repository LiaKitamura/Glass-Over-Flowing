class SearchResultsController < ApplicationController

  def index
    @styles = Style.search(params[:q])
    @beers = Beer.search(params[:q])
  end
end
