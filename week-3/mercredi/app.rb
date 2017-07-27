require 'pry'

class User
	attr_accessor :firstname, :lastname
	@@all = []

	def initialize(firstname, lastname)
		@firstname = firstname
		@lastname = lastname
		puts  "Creating #{self.firstname}"
		@@all.push(self)
	end

	def full_name
		return "#{@firstname.capitalize} #{@lastname.capitalize}"
	end

	def self.all
		return @@all
	end
end

binding.pry

puts "end of file"
