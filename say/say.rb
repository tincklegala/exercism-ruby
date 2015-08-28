class Say
  WORDS = {
    1000000 => 'million',
    1000 => 'thousand',
    100 => 'hundred',
    90 => 'ninety',
    80 => 'eighty',
    70 => 'seventy',
    60 => 'sixty',
    50 => 'fifty',
    40 => 'forty',
    30 => 'thirty',
    20 => 'twenty',
    19 => 'nineteen',
    18 => 'eighteen',
    17 => 'seventeen', 
    16 => 'sixteen',
    15 => 'fifteen',
    14 => 'fourteen',
    13 => 'thirteen',              
    12 => 'twelve',
    11 => 'eleven',
    10 => 'ten',
    9 => 'nine',
    8 => 'eight',
    7 => 'seven',
    6 => 'six',
    5 => 'five',
    4 => 'four',
    3 => 'three',
    2 => 'two',
    1 => 'one'
  }

  def initialize(number)
    @number = number
  end

  def in_english
    str = ""
    WORDS.each do |num, name|
      if @number == 0
        return str
      elsif @number.to_s.length == 1 && @number/num > 0
        return str + "#{name}"      
      elsif @number < 100 && @number/num > 0
        return str + "#{name}" if @number%num == 0
        return str + "#{name} " + Say.new(@number%num).in_english
      elsif @number/num > 0
        return str + Say.new(@number/num).in_english + " #{name} " + Say.new(@number%num).in_english
      end
    end
    str
  end
end