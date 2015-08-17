class Squares
	def initialize(num)
		@num = num		
	end

	def sum_of_squares
		(1..@num).inject(0){ |sum, val| sum += val**2 }
	end

	def square_of_sums
		total = (1..@num).inject(0){ |sum, val|	sum += val }
		total**2	
	end

	def difference
		square_of_sums-sum_of_squares
	end

end