# Converting a binary number to decimal
class Binary
  VERSION = 1
  def initialize(binary_number)
    @binary_number = binary_number
    raise(ArgumentError) if /^[01]*$/.match(@binary_number).nil?
  end

  def to_decimal
    reversed_number = @binary_number.reverse.split('').map(&:to_i)
    reversed_number.each_with_index.inject(0) { |a, (e, i)| a + e * (2**i) }
  end
end
