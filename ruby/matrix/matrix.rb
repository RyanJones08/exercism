=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end
class Matrix
  def initialize(martix)
    @rows = martix.each_line.map { |line| line.split.map(&:to_i) }
    @columns = @rows.transpose
  end

  def rows
    @rows
  end

  def columns
    @columns
  end
end