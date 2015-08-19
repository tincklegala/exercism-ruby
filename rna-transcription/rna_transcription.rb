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
    rna_strand.each_char.map do |nucleotide| 
      (RNA_COMPLEMENT[nucleotide].nil?) ? raise(ArgumentError) : RNA_COMPLEMENT[nucleotide]
    end.join('')
  end

  def self.of_dna(dna_strand)
    dna_strand.each_char.map do |nucleotide|
      (DNA_COMPLEMENT[nucleotide].nil?) ? raise(ArgumentError) : DNA_COMPLEMENT[nucleotide]
    end.join('')
  end
end
