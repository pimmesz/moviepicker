class SearchesController < ApplicationController
  def index
    # Create new search to be filled with picked movies
    @search = Search.new
    @search.pickedmovies = []
    @search.save!

    # Implementing the search from moviedb gem
    Tmdb::Api.key("2d80876e5f6bec711a87959701829d27")
    @search_results = Tmdb::Search.new
    @search_results.resource('movie')
    @search_results.query(params[:query]) # the query to search against
    @results = @search_results.fetch # makes request

    raise
  end

  def update
    @search = Search.find_by_id(params["id"].to_i)
    @search.pickedmovies << params["pickedmovies"]
    @search.save!
  end
end
