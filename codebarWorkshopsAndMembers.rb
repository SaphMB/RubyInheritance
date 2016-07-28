class Members
	attr_reader :full_name

	def initialize(full_name)
		@full_name = full_name
	end

	def add_participant

	end
end

class Student < Members
	def initialize(full_name, about)
		super(full_name)
		@about = about
	end
end

class Coach < Members
	def initialize(full_name, bio, skills) 
		super(full_name)
		@bio = bio
		@skills = skills
	end

	def add_skill

	end


end

class Workshop < Members
	def initialize(date, venue_name)
		@date = date
		@venue_name = venue_name
	end

	def add_participant(full_name)
		students = []
		coaches = []
		if full_name.is_a?(Student) [full_name << students]
		else [full_name << coaches]
		end
	end

	def print_details

	end
end

workshop = Workshop.new("12/03/2014", "Shutl")

jane = Student.new("Jane Doe", "I am trying to learn programming and need some help")
puts jane
lena = Student.new("Lena Smith", "I am really excited about learning to program!")
vicky = Coach.new("Vicky Ruby", "I want to help people learn coding.")
vicky.add_skill("HTML")
vicky.add_skill("JavaScript")
nicole = Coach.new("Nicole McMillan", "I have been programming for 5 years in Ruby and want to spread the love")
nicole.add_skill("Ruby")

workshop.add_participant(jane)
workshop.add_participant(lena)
workshop.add_participant(vicky)
workshop.add_participant(nicole)
workshop.print_details



