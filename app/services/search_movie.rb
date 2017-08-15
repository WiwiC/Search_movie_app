class SearchMovie

	def initialize(title)
		@title = title
	end

	def perform
		search_movie
	end

	private

	def search_movie
		Tmdb::Api.key(ENV["MOVIE_DB_KEY"])
		Tmdb::Api.language("fr")
		@search = Tmdb::Search.new
		@search.resource('movie')
		@search.query(@title)
		@search.fetch
	end

	def config
	    Tmdb::Api.key(ENV["MOVIE_DB_KEY"])
	    configuration = Tmdb::Configuration.new
	    puts configuration.base_url
	    puts configuration.secure_base_url
	    puts configuration.poster_sizes
	    puts configuration.backdrop_sizes
	    puts configuration.profile_sizes
	    puts configuration.logo_sizes
  end
end