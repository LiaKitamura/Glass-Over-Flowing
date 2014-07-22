class SearchResultsController < ApplicationController

  def index
    # @results = Style.search(params[:q]).collect(&:searchable)
    @results = Style.search(params[:q])
  end

end
