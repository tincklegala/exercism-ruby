class Complement
  VERSION = 2

  RNA_COMPLEMENT = {
    'G' => 'C',
    'C' => 'G',
    'A' => 'T',
    'U' => 'A'
  }
  DNA_COMPLEMENT = RNA_COMPLEMENT.invert
  
  def self.of_rna(rna)
  	val = 0
    rna.each_char do |nucleotide|
      raise(ArgumentError) if RNA_COMPLEMENT[nucleotide].nil?
      rna[val] = RNA_COMPLEMENT[nucleotide]
      val += 1
    end
    rna   
  end

  def self.of_dna(dna)
  	val = 0
    dna.each_char do |nucleotide|
      raise(ArgumentError) if DNA_COMPLEMENT[nucleotide].nil?
      dna[val] = DNA_COMPLEMENT[nucleotide]
      val += 1
    end
    dna
  end

end