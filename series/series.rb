# Calculate series
class Series
  def initialize(number)
    @number = number
  end

  def slices(length_of_series)
    raise(ArgumentError)  if length_of_series > @number.size

    count = @number.size - length_of_series
    result = []
    0.upto(count) do |i|
      result.push(@number[i, length_of_series].split('').map(&:to_i))
    end
    result
  end
end
