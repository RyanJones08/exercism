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
  @resitor_map = {
    'black' => '0',
    'brown' => '1',
    'red' => '2',
    'orange' => '3',
    'yellow' => '4',
    'green' => '5',
    'blue' => '6',
    'violet' => '7',
    'grey' => '8',
    'white' => '9'
  }
  def self.value(*colors)
    # print "#{colors[0][0]} #{colors[0][1]}"
    "#{color_value(colors[0][0])}#{color_value(colors[0][1])}".to_i
  end

  def self.color_value(color)
    # print @resitor_map[color.downcase]
    @resitor_map[color]
  end
end
