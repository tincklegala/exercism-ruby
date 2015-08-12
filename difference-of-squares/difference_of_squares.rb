class Squares
	def initialize(num)
		@num = num		
	end

	def sum_of_squares
		sum = 0
		(@num+1).times do |variable|
			sum += variable**2			
		end
		sum
	end

	def square_of_sums
		sum = 0
		(@num+1).times do |variable|
			sum += variable			
		end
		sum	** 2	
	end

	def difference
		a = Squares.new(@num).sum_of_squares
		b = Squares.new(@num).square_of_sums
		(a-b).abs
	end
end