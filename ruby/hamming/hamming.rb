=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end
class Hamming
  def self.compute(first_dna, second_dna)
    count = 0
    i = 0
    if (first_dna.length != second_dna.length)
      raise ArgumentError.new("size mismatch")
    end

    while (i <= first_dna.length)
      if (first_dna[i] != second_dna[i])
        count += 1
      end
      i += 1
    end
    count
  end
end
