class Raindrops

	CONVERSION_STRING = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(number)
  	return "1" if number == 1

  	factors = []
  	divisor = 2
  	dividend = number
  	while dividend != 1
  		if dividend%divisor == 0
  			dividend = dividend/divisor
  			factors.push(divisor)  			
  		else
  			divisor += 1
  		end
  	end

  	raindrop = ""
  	factors.uniq.each do |factor|
  		raindrop += CONVERSION_STRING[factor] if CONVERSION_STRING.has_key?(factor)
  	end

  	return "#{number}" if raindrop.empty?
  	raindrop  	
  end
	
end