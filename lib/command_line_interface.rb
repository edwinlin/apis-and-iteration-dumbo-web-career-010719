def welcome
  # puts out a welcome message here!
  puts "Welcome to Star Wars API lab."
end

def get_character_from_user
  # response = getJSON('http://www.swapi.co/api/people/')
  # names = response["results"].map {|character| character["name"]}
  # puts names
  # puts
  puts "please enter a character name"
  # use gets to capture the user's input. This method should return that input, downcased.
  gets.strip
end
