class MoviesController < ApplicationController
  def index
    @movies = %w[amsterdam paris berlin newyork]
  end

  def show
  end
end
