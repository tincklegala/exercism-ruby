class Hamming
	VERSION = 1
	def self.compute(firstString, secondString)
		if firstString.length == secondString.length
			count = firstString.length
			hammingDist = 0
			count.times do |n|
				if firstString[n] != secondString[n]
					hammingDist += 1
				end
			end
			hammingDist
		else
			raise(ArgumentError)
		end
	end
end