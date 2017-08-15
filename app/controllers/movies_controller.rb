class MoviesController < ApplicationController
  def search
  	text = params[:movie_title]
  	unless text == nil
      @movies = SearchMovie.new(text).perform 
      if @movies.size == nil

      else
      	@movies = @movies[0..19]
      end
    end
  end
end