require_relative 'bike'

class DockingStation

	def initialize
		@bikes = []
	end

	def dock(bike)
		fail 'Docking station full' if @bikes.count >= 20
		@bikes << bike
	end

	def release_bike
		fail "No bikes available" if @bikes.count >= 20 
		@bikes.pop
	end

	attr_reader :bike
end
