class Flower

	attr_accessor :color

	def initialize(color)
		@color = color
	end

	class << self
		def with_red_color
			Flower.new("red")
		end

end