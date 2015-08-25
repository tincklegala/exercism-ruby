# Finding Anagrams
class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(option_list)
    eql_length = option_list.find_eql_length_words(@word)
    eql_length.inject([]) { |a, e| anagram?(e.downcase) ? a.push(e) : a }
  end

  def anagram?(option)
    return true if @word != option && match_word?(option)
  end

  def match_word?(option)
    option.each_char do |chr|
      return false unless match_chars?(chr, option.count(chr))
    end
  end

  def match_chars?(char, count)
    @word.include?(char) && @word.count(char) == count
  end
end

# Array methods
class Array
  def find_eql_length_words(word)
    find_all { |value| value.size == word.size }
  end
end
