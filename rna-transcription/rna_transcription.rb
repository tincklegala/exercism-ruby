class Complement
	VERSION = 1
	def self.of_dna(dna)
		dna.length.times do |object|
			case dna[object]
			when 'G'
				dna[object] = 'C'
			when 'C'
				dna[object] = 'G'
			when 'T'
				dna[object] = 'A'
			when 'A'
				dna[object] = 'U'	
			else
				raise(ArgumentError)			
			end
		end
		dna
	end

	def self.of_rna(rna)
		rna.length.times do |object|
			case rna[object]
			when 'G'
				rna[object] = 'C'
			when 'C'
				rna[object] = 'G'
			when 'U'
				rna[object] = 'A'
			when 'A'
				rna[object] = 'T'	
			else
				raise(ArgumentError)			
			end
		end
		rna		
	end
end