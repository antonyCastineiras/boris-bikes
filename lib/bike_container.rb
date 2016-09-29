require 'bike.rb'

class BikeContainer
	DEFAULT_CAPACITY = 20
	def initialize(capacity = DEFAULT_CAPACITY)
		@capacity = capacity
    @bikes = []
    @broken_bikes = []
  end
  attr_reader :capacity

  def release_working_bike
    fail 'No working bikes available' if empty?
    @bikes.pop
  end

  def receive_bike(bike,broken=bike.broken?)
    fail 'Unable to hold more bikes' if full?
    if broken
      bike.report_broken
      @broken_bikes << bike
    else
      @bikes << bike
    end
  end

  private
  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count + @broken_bikes.count >= @capacity
  end
end