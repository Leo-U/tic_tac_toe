class Board
  attr_accessor :top, :middle, :bottom
  attr_reader :eye, :crane
  def initialize
    @edge = "#{"⣿\n" * 9}⣿"
    @space = "#{'⠀'*25}\n"*10 << "#{'⠀'*25}"
    @eye = "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⢀⣠⣴⡶⠾⣿⣿⣿⣿⣍⠻⢿⣦⠀⠀⠀⠀⠀⠀⠀
    ⠀⣀⣠⣴⣾⣿⣍⣁⡀⠀⠻⣿⣿⣿⠟⠀⢀⣹⣿⣷⣶⣶⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠲⠶⠶⠶⠾⠿⠛⠛⠋⠁⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    @crane = "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⣀⡖⢲⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⣠⡶⠟⠋⠙⢺⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⡼⠁⠀⠀⢀⣤⠟⢀⣠⡤⠤⠤⠤⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠁⠀⠀⣼⠋⢁⡴⠋⣹⠋⠉⠀⠀⠀⠉⠿⣆⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠈⠛⠛⢶⣄⡘⠿⠶⣶⣤⣤⣤⣤⣽⣿⣦⣀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⣿⠒⣶⠒⠒⠲⠶⠶⠶⢾⣟⢦⡀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⠀⢹⠄⠀⠀⠀⠀⠀⠀⠘⠃⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠀⢠⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⢀⣀⣾⣀⣠⣏⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"

    @top = [@space, @space, @space]
    @middle = [@space, @space, @space]
    @bottom = [@space, @space, @space]
  end

  def print_board_row (row, edge = @edge)
    edge.each_line.with_index do |line, index|
      edge_line = edge.lines[index].strip
      
    puts line.strip + row[0].lines[index].strip + edge_line + row[1].lines[index].strip + edge_line + row[2].lines[index].strip + edge_line
    end
  end

  def print_board
    self.print_board_row(self.top)
    self.print_board_row(self.middle)
    self.print_board_row(self.bottom)
  end
end

the_board = Board.new
the_board.print_board

puts 'Player 1 choose piece (crane or eye)'
type = gets

case type
when "crane\n"
  type = the_board.crane
when "eye\n"
  type = the_board.eye
end

p type

puts 'Player 1 move. State row followed by column e.g. \'top middle\'.'

position = gets.split
case position[1]
when "left"
  position[1] = 0
when "middle"
  position[1] = 1
when "right"
  position[1] = 2
end

case position[0]
when "top"
  the_board.top[position[1]] = type
when "middle"
  the_board.middle[position[1]] = type
when "bottom"
  the_board.bottom[position[1]] = type
end

the_board.print_board