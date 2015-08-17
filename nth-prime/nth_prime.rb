class Prime
  def nth(num)
    return raise(ArgumentError) if num <= 0
    return 2 if num == 1

    prime_array = [2]

    number = 3

    while prime_array.length != num
      flag = true
      prime_array.each do |val|  
        if number % val == 0
          flag = false
          number = number.next()
          break         
        end
      end
      prime_array.push(number) if flag
    end
    prime_array.last
  end
end