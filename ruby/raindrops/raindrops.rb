=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end
class Raindrops
  def self.convert(number)
    response = ""
    if (number % 3 == 0)
      puts "number: #{number} mod 3"
      response = response + "Pling"
    end
    if (number % 5 == 0)
      puts "number: #{number} mod 5"
      response = response + "Plang"
    end
    if (number % 7 == 0)
      puts "number: #{number} mod 7"
      response = response + "Plong"
    end
    if response.empty?
      puts "number: #{number} empty"
      response = response + number.to_s
    end
    response
  end
end
