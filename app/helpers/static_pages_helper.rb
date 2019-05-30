module StaticPagesHelper
	#helpers for the API
	require 'httparty'
	def search_api
		#puts @movie_name
		#url = "http://www.omdbapi.com/?t={@movie_name}/=&apikey=6609b89a&format=json"
		#url = "http://www.omdbapi.com/?t=#{@movie_name}/=&apikey=6609b89a&format=json"
		url = "http://www.omdbapi.com/?t=#{@movie_name}/&apikey=6609b89a&format=json"
		#puts url
		response = HTTParty.get(url)
		information = JSON.parse(response.body)
		#puts information.inspect
	end
end
