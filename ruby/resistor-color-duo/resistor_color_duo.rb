=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
- Black: 0
- Brown: 1
- Red: 2
- Orange: 3
- Yellow: 4
- Green: 5
- Blue: 6
- Violet: 7
- Grey: 8
- White: 9
=end
class ResistorColorDuo
  def self.value(*colors)
    (color_value(colors[0][0]) + color_value(colors[0][1])).to_i
  end

  def self.color_value(color)
    case color.downcase
    when 'black'
      '0'
    when 'brown'
      '1'
    when 'red'
     '2'
    when 'orange'
      '3'
    when 'yellow'
      '4'
    when 'green'
      '5'
    when 'blue'
      '6'
    when 'violet'
      '7'
    when 'grey'
      '8'
    when 'white'
      '9'
    end
  end
end
