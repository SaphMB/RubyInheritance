class Tutorial
	def initialize(name, type, difficulty)
		@name = name
		@type = type
		@difficulty = difficulty
	end

	def name
		@name
	end

	def type
		@type
	end

	def difficulty
		@difficulty
	end

	def is_harder_than?(tutorial)
		level = {:easy => 0, :medium => 1, :hard => 2, :advanced => 3, :expert => 4}

		if self.type != tutorial.type
			return puts "You cannot compare a #{self.type} with a #{tutorial.type} tutorial "
		end

		if level[self.difficulty] < level[tutorial.difficulty]
			return puts false
		else
			return puts true
		end
	
	end

end

tutorial1 = Tutorial.new("Object Oriented Ruby", :ruby, :medium)
tutorial2 = Tutorial.new("Introduction to JavaScript", :javascript, :easy)
tutorial3 = Tutorial.new("HTTP Requests, AJAX and APIs", :javascript, :medium)

tutorial1.is_harder_than?(tutorial2)
# You cannot compare a Ruby with a JavaScript tutorial

tutorial2.is_harder_than?(tutorial1)
# You cannot compare a JavaScript with a Ruby tutorial

tutorial2.is_harder_than?(tutorial3)
# false

tutorial3.is_harder_than?(tutorial2)
# true