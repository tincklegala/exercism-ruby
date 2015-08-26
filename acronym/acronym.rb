# Implementing Acronym
class Acronym
  VERSION = 1
  def self.abbreviate(phrase)
    return phrase.abbv unless phrase.abbv?
    words = phrase.scan(/\w+/)
    words.inject([]) do |a, e|
      if e.extract_upper_case_letters.empty?
        a.push(e[0].upcase)
      else
        a.push(e.extract_upper_case_letters)
      end
    end.join
  end
end

# Implementing String method
class String
  def extract_upper_case_letters
    scan(/\p{Upper}/)
  end

  def abbv?
    scan(/\p{Upper}+:/).empty?
  end

  def abbv
    scan(/\p{Upper}+/)[0]
  end
end
