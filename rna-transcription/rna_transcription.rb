# Finding Complements of DNA and RNA strands
class Complement
  VERSION = 5
  RNA_COMPLEMENT = {
    'G' => 'C',
    'C' => 'G',
    'A' => 'T',
    'U' => 'A'
  }
  DNA_COMPLEMENT = RNA_COMPLEMENT.invert
  
  def self.of_rna(rna_strand)
    compute_complement(rna_strand, RNA_COMPLEMENT)
  end

  def self.of_dna(dna_strand)
    compute_complement(dna_strand, DNA_COMPLEMENT)
  end

  def self.compute_complement(strand, complement_hash)
    strand.each_char.map do |nucleotide|
      (complement_hash[nucleotide].nil?) ? raise(ArgumentError) : complement_hash[nucleotide]
    end.join('')
  end
end
