=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end
class Series
  def initialize(series)
    @series = series
  end

  def slices(number_slices)
    raise ArgumentError if number_slices > @series.length
    @series.chars.each_cons(number_slices).map(&:join)
  end
end