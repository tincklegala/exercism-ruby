# Sum of Multiples
class SumOfMultiples
  def initialize(*args)
    @divisor = args
  end

  def self.to(number)
    new(3, 5).to(number)
  end

  def to(number)
    multiples = []
    @divisor.each do |divisor|
      multiples.push((0...number).map { |e| (e % divisor == 0) ? e : 0 })
    end
    multiples.flatten.uniq.inject(:+)
  end
end
