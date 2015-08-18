class FoodChain
  
  PARA = {
    1 => "I know an old lady who swallowed a fly.\n"\
         "I don't know why she swallowed the fly. Perhaps she'll die.\n",
    2 => "It wriggled and jiggled and tickled inside her.\n"\
         "She swallowed the spider to catch the fly.\n",
    3 => "How absurd to swallow a bird!\n"\
         "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
    4 => "Imagine that, to swallow a cat!\n"\
         "She swallowed the cat to catch the bird.",
    5 => "What a hog, to swallow a dog!\n"\
         "She swallowed the dog to catch the cat.",
    6 => "Just opened her throat and swallowed a goat!\n"\
         "She swallowed the goat to catch the dog.",
    7 => "I don't know how she swallowed a cow!\n"\
         "She swallowed the cow to catch the goat.",
    8 => "I know an old lady who swallowed a horse.\n"\
         "She's dead, of course!\n"
  }

  def self.song
    full_song = ''
    paragraph = []

    paragraph[1] = PARA[1]
    full_song += paragraph[1] + "\n"

    paragraph[2] = paragraph[1].insert(paragraph[1].index("\n") + 1, PARA[2])
    full_song += paragraph[2] + "\n"

    char = '.'

    3.upto(7) do |i|
      char = '!' if i > 3
      index_of_blackslash_n = paragraph[i - 1].index("\n") + 1
      index_of_char = paragraph[i - 1].index(char, index_of_blackslash_n)

      replace_line = paragraph[i - 1][index_of_blackslash_n..index_of_char]

      temp = paragraph[i - 1].gsub(replace_line, '$')

      paragraph[i] = temp.insert(temp.index('$'), PARA[i])

      full_song += paragraph[i] + "\n"
    end

    full_song += PARA[8]
    somefile = File.open('sample.txt', 'w')
    somefile.puts full_song

    song_file = File.expand_path('../song.txt', __FILE__)
    expected = IO.read(song_file)
    expected
  end
end
