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

  def dock(bike,broken=bike.broken?)
    fail 'Docking Station Full' if full?
    if broken
      bike.report_broken
      @broken_bikes << bike
    else
      @bikes << bike
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
    @bikes.count + @broken_bikes.count >= @capacity
  end
end
