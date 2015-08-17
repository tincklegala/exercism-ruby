class Phrase
  
  def initialize(phrase)
    @phrase_check = phrase.split(" ")
  end

  def word_count
    count = Hash.new 0
    @phrase_check.each do |word|
      cleaned_string = word.gsub(/[^a-zA-Z\-]/,"").downcase
      count[cleaned_string] += 1 unless cleaned_string.empty?
    end
    count
  end

end
