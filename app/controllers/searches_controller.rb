class SearchesController < ApplicationController
  def index
    @search = Search.new

    Tmdb::Api.key("2d80876e5f6bec711a87959701829d27")
    @search_results = Tmdb::Search.new
    # @search_results.resource('person') # determines type of resource
    @search_results.resource('movie')
    @search_results.query(params[:query]) # the query to search against
    @results = @search_results.fetch # makes request
  end
end
