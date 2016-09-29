require_relative 'bike'

class DockingStation
  attr_reader :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    @broken_bikes = []
  end

  def release_bike
    fail 'No working bikes available' if empty?
    @bikes.pop
  end

  def dock(bike,working=bike.working)
    fail 'Docking Station Full' if full?
    bike.working = working
    if bike.working == true
      @bikes << bike
    else
      @broken_bikes << bike
    end
  end

  #attr_reader :bike
  #def bike
  #  @bike
  #end

  private
  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= @capacity
  end
end
