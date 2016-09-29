class Bike
  def initialize
    @broken = false
  end
  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end
end


class Student
	def initialize(name,last_name)
		@name = name
		@last_name = last_name
	end
end

