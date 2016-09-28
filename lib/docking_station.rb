require_relative 'bike.rb'

class DockingStation

	DEFAULT_CAPACITY = 20

		def initialize(capacity=DEFAULT_CAPACITY)
			@bikes = []
			@capacity = capacity
		end

		attr_reader :bikes, :capacity

    def release_bike
    	raise "No bikes available" if @bikes.empty? 
    	raise "Bike not working" if @bikes.last.broken? == true
    	@bikes.pop
    end

    def dock(bike)
      if full? then raise 'Docking station is full' end
      if bike.broken? then raise "Bike is broken" end
    	@bikes << bike
      end
    
    private
    	
    def full?
        @bikes.count >= DEFAULT_CAPACITY
        end     
end
