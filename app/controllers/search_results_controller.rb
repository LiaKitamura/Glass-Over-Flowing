class SearchResultsController < ApplicationController

  def index
    # @beers = PgSearch.multisearch(params[:q]).collect(&:searchable)
    @beers = PgSearch.multisearch(params[:q]).where(:searchable_type => "Beer").limit(5).collect(&:searchable)
    # @styles = PgSearch.multisearch(params[:q]).collect(&:searchable)
    @styles = PgSearch.multisearch(params[:q]).where(:searchable_type => "Style").limit(5).collect(&:searchable)
  end
end
