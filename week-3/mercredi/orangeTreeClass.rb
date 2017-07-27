require 'pry'

class OrangeTree
	attr_accessor :age, :height

	def initialize(height)
		@age = 0
	end

	def height()
		if @ege < 50
			@height += 1
		else
			@height = 0
		end
	end

	def one_year_passes()
		@age += 1
	end
end

binding.pry

puts "end of file"
