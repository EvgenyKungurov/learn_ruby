class Timer
  attr_accessor :seconds

  def initialize(seconds = 0)
  	@seconds = seconds
  end
  
  def time_string  
    Time.at(@seconds).strftime("%H:%M:%S")
  end
end