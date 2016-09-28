require_relative 'bike.rb'

class DockingStation

		def initialize(capacity=20)
			@bikes = []
			@capacity = capacity
		end

		attr_reader :bikes

    def release_bike
    	raise "No bikes available" if @bikes.empty? 
    	@bikes.pop
    end

    def dock(bike)
      if @bikes.count >= 20 then raise 'Dock station is full' end
    	@bikes << bike
    end
end