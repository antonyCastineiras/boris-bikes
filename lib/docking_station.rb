require_relative 'bike.rb'

class DockingStation

	DEFAULT_CAPACITY = 20

		def initialize(capacity=DEFAULT_CAPACITY)
			@bikes = []
			@capacity = capacity
		end

		attr_reader :bikes

    def release_bike
    	raise "No bikes available" if @bikes.empty? 
    	@bikes.pop
    end

    def dock(bike)
      if full? then raise 'Docking station is full' end
    	@bikes << bike
      end
    
    private
    	
    def full?
        @bikes.count >= DEFAULT_CAPACITY
        end     
end
