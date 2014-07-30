class SearchResultsController < ApplicationController

  def index
    # @beers = PgSearch.multisearch(params[:q]).collect(&:searchable)
    @beers = PgSearch.multisearch(params[:q]).where(:searchable_type => "Beer").collect(&:searchable)
    # @styles = PgSearch.multisearch(params[:q]).collect(&:searchable)
    @styles = PgSearch.multisearch(params[:q]).where(:searchable_type => "Style").collect(&:searchable)
  end
end
