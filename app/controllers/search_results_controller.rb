class SearchResultsController < ApplicationController

  def index
    @results = Style.search(params[:q]).collect(&:searchable)
  end

end
