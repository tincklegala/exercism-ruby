# Calculating Hamming Distance between two DNA strands
class Hamming
  VERSION = 4
  def self.compute(first_strand, second_strand)
    raise(ArgumentError) unless first_strand.size == second_strand.size

    (0..(first_strand.size - 1)).inject(0) { |a, e| (first_strand[e] == second_strand[e]) ? a : a + 1 }
  end
end
