# Implementing Cryptography
class Crypto
  def initialize(plain_text)
    @plain_text = plain_text
  end

  def normalize_plaintext
    @plain_text = @plain_text.remove_spaces.remove_punctuations.downcase
  end

  def size
    normalize_plaintext
    return Math.sqrt(@plain_text.size) if Math.sqrt(@plain_text.size) % 1 == 0
    find_nearest_square(@plain_text.size)
  end

  def plaintext_segments
    columns = size
    @plain_text.scan(/.{1,#{columns}}/)
  end

  def ciphertext
    call_cipher('')
  end

  def normalize_ciphertext
    call_cipher(' ')
  end

  private

  def find_nearest_square(val)
    perfect_sq = (val / 2..val).inject([]) { |a, e| Math.sqrt(e) % 1 == 0 ? a.push(e) : a }.max
    (Math.sqrt(perfect_sq) + 1).to_i
  end

  def call_cipher(char)
    segments = plaintext_segments.map(&:chars)
    generate_cipher(segments[0], *segments[1..segments.size], char)
  end

  def generate_cipher(first_segment, *remaining_segments, char)
    first_segment.zip(*remaining_segments).map { |column| column.compact.reduce(&:+) }.join(char)
  end
end

# Implementing functions for Strings
class String
  def remove_spaces
    gsub(/\s/, '')
  end

  def remove_punctuations
    gsub(/[^a-zA-Z0-9]/, '')
  end
end
