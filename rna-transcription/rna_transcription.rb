# Finding Complements of DNA and RNA strands
class Complement
  VERSION = 3
  RNA_COMPLEMENT = {
    'G' => 'C',
    'C' => 'G',
    'A' => 'T',
    'U' => 'A'
  }
  DNA_COMPLEMENT = RNA_COMPLEMENT.invert
  
  def self.of_rna(rna_strand)
  	rna_complement = ''
    index = 0
    rna_strand.each_char do |nucleotide|
      raise(ArgumentError) if RNA_COMPLEMENT[nucleotide].nil?
      rna_complement[index] = RNA_COMPLEMENT[nucleotide]
      index += 1
    end
    rna_complement 
  end

  def self.of_dna(dna_strand)
    dna_complement = ''
  	index = 0
    dna_strand.each_char do |nucleotide|
      raise(ArgumentError) if DNA_COMPLEMENT[nucleotide].nil?
      dna_complement[index] = DNA_COMPLEMENT[nucleotide]
      index += 1
    end
    dna_complement
  end
end
