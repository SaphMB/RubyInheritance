class Flower

	attr_accessor :color

	def initialize(color)
		@color = color
	end

	def self.with_red_color
		Flower.new("red")
	end
	
end