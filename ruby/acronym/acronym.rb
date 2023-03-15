=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end
class Acronym
  def self.abbreviate(long_string)
    words = long_string.split(/ |-/)
    acronym = ''
    words.each do |word|
      if word.strip.length > 0
        acronym += word[0].capitalize
      end
    end
    acronym
  end
end
