# Implementing Scrabble Score
class Scrabble
  SCORE_TABLE = {
    'A' => 1, 'B' => 3, 'C' => 3, 'D' => 2, 'E' => 1,
    'F' => 4, 'G' => 2, 'H' => 4, 'I' => 1, 'J' => 8,
    'K' => 5, 'L' => 1, 'M' => 3, 'N' => 1, 'O' => 1,
    'P' => 3, 'Q' => 10, 'R' => 1, 'S' => 1, 'T' => 1,
    'U' => 1, 'V' => 4, 'W' => 4, 'X' => 8, 'Y' => 4, 'Z' => 10 }

  def initialize(word)
    @word = word
  end

  def score
    return 0 if @word.nil? || @word.strip.empty?
    @word = @word.upcase
    word_chart = Hash[('A'..'Z').to_a.map { |letter| [letter, 0] }]
    @word.each_char { |chr| word_chart[chr] += 1 }
    word_chart.inject(0) { |a, (key, _value)|  a + SCORE_TABLE[key] * word_chart[key] }
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end
