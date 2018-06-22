require 'json'
require 'open-uri'

class MoviesController < ApplicationController
  def index
    @movies = %w[amsterdam paris berlin newyork]

    url = 'https://api.themoviedb.org/3/search/multi?api_key=2d80876e5f6bec711a87959701829d27&language=en-US&query=matrix&page=1&include_adult=false'
    movie_serialized = open(url).read
    movie = JSON.parse(user_serialized)
  end

  def show
  end
end
