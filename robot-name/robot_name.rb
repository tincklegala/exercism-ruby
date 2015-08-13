class Robot
	def initialize
		@flag = true
		@robot_name = ""
	end

	def name
		if (@flag == true)
			@robot_name = ""
			2.times do
				@robot_name += (65 + rand(26)).chr
		  end
		  3.times do
		  	@robot_name += rand(9).to_s
		  end
		  @flag = false
		end		
		@robot_name
	end	

	def reset
		@flag = true
	end
end