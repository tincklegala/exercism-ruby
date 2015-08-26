# Counting the number of nucleotides in a DNA strand
class Nucleotide
  def initialize(dna_strand)
    @dna_strand = dna_strand
  end
  def self.from_dna(dna_strand)
    raise(ArgumentError) unless dna_strand.scan(/[^ATGC]/).empty?
    Nucleotide.new(dna_strand)
  end

  def count(nucleotide)
    @dna_strand.count(nucleotide)
  end

  def histogram
    nucleotide_count = Hash[%w(A T G C).map { |letter| [letter, 0] }]
    @dna_strand.each_char { |chr| nucleotide_count[chr] += 1 }
    nucleotide_count
  end
end
