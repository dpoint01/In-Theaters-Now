require 'json'
require 'net/http'

if !ENV.has_key?("ROTTEN_TOMATOES_API_KEY")
  puts "You need to set the ROTTEN_TOMATOES_API_KEY environment variable."
  exit 1
end

api_key = ENV["ROTTEN_TOMATOES_API_KEY"]
uri = URI("http://api.rottentomatoes.com/api/public/v1.0/lists/movies/in_theaters.json?apikey=#{api_key}")

response = Net::HTTP.get(uri)
movie_data = JSON.parse(response)


#-----------------------------METHODS------------------------------#
#                                                                  #
#                                                                  #
#                                                                  #
#------------------------------------------------------------------#

#----------------------------AVERAGE-------------------------#
def average(critics_score, audience_score)
  return (critics_score + audience_score) / 2
end

#--------------------------EXTRACT INFO----------------------#
def extract_info(movie_data)

  array = []
  cast = []
  count = 0


  movie_data["movies"].each do |movies|


   #this is to get the first three actors
    while count < 3
      if movies["abridged_cast"][count] != nil
        cast << movies["abridged_cast"][count]["name"]
      end
      count += 1
    end

    average = average(movies["ratings"]["critics_score"],movies["ratings"]["audience_score"])

    array << average.to_s + " - #{movies["title"]} (#{movies["mpaa_rating"]}) starring #{cast.join(", ")}\n\n"

    #re-initialize count and the cast array for the next iteration
    count = 0
    cast = []
  end

  array

end


#---------------------------------MAIN------------------------------#
#                                                                   #
#                                                                   #
#                                                                   #
#-------------------------------------------------------------------#

puts "IN THEATERS NOW: \n\n"

movie_array = extract_info(movie_data)

puts movie_array.sort.reverse

