require 'date'
# Calculate the date of meetups
class Meetup
  TEENTH = [13, 14, 15, 16, 17, 18, 19]
  WEEKDAYS = {
    sunday: 0,
    monday: 1,
    tuesday: 2,
    wednesday: 3,
    thursday: 4,
    friday: 5,
    saturday: 6
  }
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    send(schedule, weekday)
  end

  def first(weekday)
    date = Date.new(@year, @month, 1)
    return date if date.wday == WEEKDAYS[weekday]
    date.next_wday(WEEKDAYS[weekday])
  end

  def second(weekday)
    calculate(weekday, 0)
  end

  def third(weekday)
    calculate(weekday, 7)
  end

  def fourth(weekday)
    calculate(weekday, 14)
  end

  def last(weekday)
    date = Date.new(@year, @month, 1)
    return fifth(weekday) if fifth(weekday).mon == date.mon
    fourth(weekday)
  end

  def teenth(weekday)
    if TEENTH.include? second(weekday).mday
      Date.new(@year, @month, second(weekday).mday)
    else
      Date.new(@year, @month, third(weekday).mday)
    end
  end

  private

  def calculate(weekday, index)
    date = Date.new(@year, @month, 1)
    return date.next_wday(WEEKDAYS[weekday]) + index if date.wday == WEEKDAYS[weekday]
    date.next_wday(WEEKDAYS[weekday]) + (index + 7)
  end

  def fifth(weekday)
    fourth(weekday).next_wday(WEEKDAYS[weekday])
  end
end

# Calculating next week day using Date
class Date
  def next_week
    self + (7 - wday)
  end

  def next_wday(n)
    n > wday ? self + (n - wday) : next_week.next_day(n)
  end
end
