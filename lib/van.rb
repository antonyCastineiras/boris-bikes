require_relative 'docking_station'
require_relative 'bike'
require_relative 'garage'

class Van 

	def initialize
		@van_bikes = []
		@capacity = 20
	end

	attr_accessor :van_bikes

	def release_bike(bike,destination)
		if destination.class.to_s == "DockingStation" and !bike.broken? then 
			destination.bikes << bike
		elsif destination.class.to_s == "Garage" and bike.broken? then 
			destination.bikes << bike 
		else 
			fail "Cannot release bike"
		end 
	end

	def collect(received_from)
		if ((received_from.class.to_s == "DockingStation") && (received_from.bikes[0].broken?)) then 
			@van_bikes << received_from.bikes[0]  
		elsif (received_from.class.to_s == "Garage" && !received_from.bikes[0].broken?) then 
			@van_bikes << received_from.bikes[0]
		else 
			fail "Cannot collect bike" 
		end
	end

end


=begin
===========
feature tests
===========

van = Van.new
bike = Bike.new
van.van_bikes << bike
docking_station = DockingStation.new
van.release_bike(van.van_bikes[0],docking_station)
puts docking_station.bikes[0]

van = Van.new
bike = Bike.new
bike.report_broken
docking_station = DockingStation.new
docking_station.dock(bike)
van.collect(docking_station)
puts van.van_bikes[0]

van = Van.new
bike = Bike.new
garage = Garage.new
garage.bikes << bike
van.collect(garage)
puts van.van_bikes[0]

van = Van.new
bike = Bike.new
van.bikes << bike
docking_station = DockingStation.new
van.release_bike(van.van_bikes[0],docking_station)
puts docking_station.bikes[0]

van = Van.new
garage = Garage.new
bike = Bike.new
bike.report_broken
van.bikes << bike
van.release_bike(van.van_bikes[0],garage)
puts garage.bikes[0]
=end


