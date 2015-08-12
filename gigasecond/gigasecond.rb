class Gigasecond
	VERSION = 1
	def self.from(gs)
		gs.to_time + 10**9		
	end
end