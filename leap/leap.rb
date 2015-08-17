module Year
  module_function
  
  def leap?(check_year)

    if check_year % 4 == 0 
      if check_year % 100 == 0
        if check_year % 400 == 0
          'Yes, #{check_year} is a leap year'
        end
      else
        'Yes, #{check_year} is a leap year'
      end
    end
    
  end 
end
