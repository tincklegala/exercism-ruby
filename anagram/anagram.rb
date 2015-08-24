# Finding Anagrams
class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(option_list)
    temp = eql_length(option_list)
    temp.inject([]) { |a, e| (match_chars?(e.downcase)) ? a.push(e) : a }
  end

  def eql_length(option_list)
    option_list.find_all { |value| value.size == @word.size }
  end

  def match_chars?(option)
    return false if @word == option
    option.each_char do |chr|
      return false unless (@word.include? chr) && (option.count chr) == (@word.count chr)
    end
    true
  end
end
