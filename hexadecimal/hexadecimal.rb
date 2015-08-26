# Converting Hexadecimal to Decimal
class Hexadecimal
  DECIMAL_VALUES = {
    '0' => 0, '1' => 1, '2' => 2, '3' => 3,
    '4' => 4, '5' => 5, '6' => 6, '7' => 7,
    '8' => 8, '9' => 9, 'a' => 10, 'b' => 11,
    'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15
  }

  def initialize(hexadecimal_no)
    @hexadecimal_no = hexadecimal_no
  end

  def to_decimal
    return 0 if /^[0-9a-f]*$/.match(@hexadecimal_no).nil?
    reversed_no = @hexadecimal_no.reverse.split('')
    reversed_no.each_with_index.inject(0) { |a, (e, i)| a + DECIMAL_VALUES[e] * (16**i) }
  end
end
