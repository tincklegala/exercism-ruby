module Grains

  module_function

  def square(num)
    2**(num - 1)
  end

  def total
    (1..64).inject { |sum, num| sum += 2**(num - 1) }    
  end

end