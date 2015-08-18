# Sieve of Eratosthenes to find all the primes from 2 up to a given number.
class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    list = Array.new(@limit + 1, 'unmarked')

    list.each_index do |index|
      if index == 0 || index == 1
        list[index] = 'marked'
        next
      end
      index.next.upto(@limit) do |number|
        next if list[number] == 'marked'
        list[number] = 'marked' if (number % index == 0)
      end
    end

    prime = []
    list.each_with_index { |e, i| prime.push(i) if e == 'unmarked' }

    prime
  end
end
