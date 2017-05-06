class Flower

	attr_accessor :color

	def initialize(color)
		@color = color
	end

	ROSE = "red"
	ANEMONE = "purple"
	CHRYSANTHEMUM = "yellow"

	class << self
		def with_red_color
			Flower.new("red")
		end
	end

end

molly = Flower.new("orange")
puts molly

lolly = Flower.with_red_color
polly = Flower.new(Flower::ROSE)
dolly = Flower.new(Flower::CHRYSANTHEMUM)
holly = Flower.new(Flower::ANEMONE)