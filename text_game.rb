class Player

	def initialize 
		attr_accessor :items, :location
	end

	location = { description: "You are in the living-room. A wizard is snoring loudly on the couch.", items: ["whiskey", "bucket"] }

	def look_around
		puts location[:description]
	end

end

class Location

end

class Map


end

tache = Player.new(location)
puts = tache