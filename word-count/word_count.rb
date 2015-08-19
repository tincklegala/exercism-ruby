class Phrase
  VERSION = 1

  def initialize(phrase)
    @phrase = phrase.split(/[ ,\n]/)
  end

  def word_count
    count = Hash.new 0
    @phrase.each do |word|
      cleaned_string = word.gsub(/[^a-zA-Z0-9'?]|(^'|'$)/,"").downcase
      count[cleaned_string] += 1 unless cleaned_string.empty?
    end
    count
  end

end
