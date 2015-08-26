# Implementing a clock
class Clock
  attr_accessor :current_hour, :current_minutes
  def initialize(hour, minutes)
    @current_hour = hour
    @current_minutes = minutes
  end

  def self.at(hour, minutes = 0)
    Clock.new(hour, minutes)
  end

  def +(minutes)
    @current_minutes += minutes % 60
    @current_hour += minutes / 60
    @current_hour -= 24 if @current_hour >= 24
    self
  end

  def -(minutes)
    @current_minutes -= minutes % 60
    @current_hour -= minutes / 60
    if @current_minutes <= 0
      @current_minutes += 60
      @current_hour -= 1
    end
    @current_hour += 24 if @current_hour < 0
    self
  end

  def ==(clock)
    return true if current_hour == clock.current_hour && current_minutes == clock.current_minutes
  end

  def to_s
    format('%02d', @current_hour) + format(':%02d', @current_minutes)
    # '%02d:%02d' % [@current_hour, @current_minutes]
  end
end
