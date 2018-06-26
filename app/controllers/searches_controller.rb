class SearchesController < ApplicationController
  def index
    # Create new search to be filled with picked movies
    if Search.find_by_session_id(session.id)
      @search = Search.find_by_session_id(session.id)
    else
      @search = Search.new
      @search.pickedmovies = []
      @search.session_id = session.id
      @search.save!
    end

    # Implementing the search from moviedb gem
    Tmdb::Api.key(ENV["Tmdb"])
    @search_results = Tmdb::Search.new
    @search_results.resource('movie')
    @search_results.query(params[:query]) # the query to search against
    @results = @search_results.fetch # makes request

    @new_search = []
    @search["pickedmovies"].each do |result|
      @new_search << result
    end
  end

  def update
    @search = Search.find_by_id(params["id"].to_i)

    unless @search.pickedmovies.include?(params["pickedmovies"])
      @search.pickedmovies << params["pickedmovies"]
      if @search.save!
        respond_to do |format|
          format.html { redirect_to root_path }
          format.js  # <-- will render `app/views/reviews/create.js.erb`
        end
      else
        respond_to do |format|
          format.html { render 'searches/show' }
          format.js  # <-- idem
        end
      end
    end
  end
end
