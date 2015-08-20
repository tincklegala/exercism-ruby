# Calculating prime numbers
class PrimeFactors
  def self.for(number)
    return [] if number == 1

    factors = []
    divisor = 2
    dividend = number
    until dividend == 1
      if dividend % divisor == 0
        dividend /= divisor
        factors.push(divisor)
      else
        divisor += 1
      end
    end
    factors
  end
end
