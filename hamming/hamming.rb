class Hamming
	VERSION = 2
	def self.compute(firstString, secondString)
		
		raise(ArgumentError) if firstString.length != secondString.length			

		count = firstString.length
    hammingDist = 0
    count.times do |n|
    hammingDist += 1 if firstString[n] != secondString[n]
    end
    hammingDist
	end
end