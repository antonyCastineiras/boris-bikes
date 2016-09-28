require_relative 'bike.rb'

class DockingStation

		def initialize
			@bike
		end

		attr_reader :bike

    def release_bike
    	raise "No bikes available" unless @bike
    	@bike
    end

    def dock(bike)
        if @bike then raise 'Dock station is full' end
    	@bike = bike
    end
end