class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    result = []
    (2..@num).each do |i|
      is_prime = true
      (2..Math.sqrt(i).to_i).each do |j|
        if i % j == 0
          is_prime = false
          break
        end
      end
      result.push(i) if is_prime
    end
    result
  end
end

p Sieve.new(10).primes