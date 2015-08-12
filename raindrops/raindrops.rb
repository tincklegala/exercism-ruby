require 'prime'
class Raindrops
	def self.convert(num)
		return "1" if num == 1

		factor = Prime.prime_division(num).flat_map{|i,j| i}

		raindrop = ""

		count = factor.length
		count.times do |variable|
			case factor[variable]
			when 3
				raindrop += "Pling"
			when 5
				raindrop += "Plang"
			when 7
				raindrop += "Plong"
			end		
		end
		return "#{num}" if raindrop.empty?
		raindrop
	end	
end