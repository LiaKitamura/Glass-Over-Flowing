class SearchResultsController < ApplicationController

  def index
    @beers = PgSearch.multisearch(params[:q]).collect(&:searchable)
    @styles = PgSearch.multisearch(params[:q]).collect(&:searchable)
  end
end
