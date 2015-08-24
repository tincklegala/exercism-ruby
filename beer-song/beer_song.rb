# Getting the lyrics of beer song
class BeerSong
  def verse(verse_number)
    if verse_number == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif verse_number == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif verse_number == 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    else
      "#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n" \
      "Take one down and pass it around, #{verse_number - 1} bottles of beer on the wall.\n"
    end
  end

  def verses(start_verse, end_verse)
    verse_numbers = (start_verse.downto end_verse).map { |e| e }
    verse_numbers.inject('') do |complete_verse, verse_number|
      complete_verse + verse(verse_number) + "\n"
    end
  end

  def sing
    verses(99, 0)
  end
end
