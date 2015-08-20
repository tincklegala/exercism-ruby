# Converting trinary number to decimal
class Trinary
  def initialize(trinary_number)
    @trinary_number = trinary_number
  end

  def to_decimal
    return 0 if /^[012]*$/.match(@trinary_number).nil?
    reversed_number = @trinary_number.reverse.split('').map(&:to_i)
    reversed_number.each_with_index.inject(0) { |a, (e, i)| a + e * (3**i) }
  end
end
