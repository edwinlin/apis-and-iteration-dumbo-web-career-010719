require 'rest-client'
require 'json'
require 'pry'

def getJSON(url)
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
end

def getFilms(placeholder)
  films = nil

  response = getJSON('http://www.swapi.co/api/people/')

  response["results"].each do |character|
    if character["name"] == placeholder
      films = character["films"]
    end
  end
 
  return films
end

def get_character_movies_from_api(character_name)
  films = getFilms(character_name)
  films.map do |url|
    getJSON(url)
  end

# binding.pry
end

def print_movies(films)
  # p films
  films.each do |hashes|
    p hashes["title"]
  end
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
