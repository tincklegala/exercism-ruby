# Calculating Hamming Distance between two DNA strands
class Hamming
  VERSION = 3
  def self.compute(first_strand, second_strand)
    raise(ArgumentError) unless first_strand.size == second_strand.size
    hamming_distance = 0
    first_strand.size.times do |index|
      hamming_distance += 1 unless first_strand[index] == second_strand[index]
    end
    hamming_distance
  end
end
