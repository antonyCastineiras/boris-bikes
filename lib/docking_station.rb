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
      if full? then raise 'Docking station is full' end
    	@bikes << bike
      end
    
    private
    	
    def full?
        @bikes.count >= 20
        end     
end
