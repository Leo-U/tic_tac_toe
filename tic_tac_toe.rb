class Board
  attr_accessor :top, :middle, :bottom, :game_status
  attr_reader :eye, :bird, :vertical_left, :vertical_middle, :vertical_right, :diagonal_forward, :diagonal_back, :space
  def initialize
    @edge = "⣿
    ⣿
    ⣿
    ⣿
    ⣿
    ⣿
    ⣿
    ⣿
    ⣿
    ⣿"
    @space = "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
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
    @bird = "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
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
    @game_status = "ongoing"
  end

  def set_conditionals
    @vertical_left = [self.top[0], self.middle[0], self.bottom[0]]
    @vertical_middle = [self.top[1], self.middle[1], self.bottom[1]]
    @vertical_right = [self.top[2], self.middle[2], self.bottom[2]]
    @diagonal_forward = [self.bottom[0], self.middle[1], self.top[2]]
    @diagonal_back = [self.top[0], self.middle[1], self.bottom[2]]
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
system'clear'
the_board.print_board

player_num = [1,2]

until the_board.game_status == "Game over!" do
  puts "Player #{player_num[0]} choose piece (bird or eye)"
  type = gets

  if type == "bird\n"
    type = the_board.bird
  elsif type == "eye\n"
    type = the_board.eye
  end

  puts "Player #{player_num[0]} move. State row followed by column e.g. \'top middle\'."

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

  system'clear'
  the_board.print_board

  the_board.set_conditionals

  if the_board.top.uniq.length == 1 && !the_board.top.include?(the_board.space)\
    || the_board.middle.uniq.length == 1 && !the_board.middle.include?(the_board.space)\
    || the_board.bottom.uniq.length == 1 && !the_board.bottom.include?(the_board.space)\
    || the_board.vertical_left.uniq.length == 1 && !the_board.vertical_left.include?(the_board.space)\
    || the_board.vertical_middle.uniq.length == 1 && !the_board.vertical_middle.include?(the_board.space)\
    || the_board.vertical_right.uniq.length == 1 && !the_board.vertical_right.include?(the_board.space)\
    || the_board.diagonal_forward.uniq.length == 1 && !the_board.diagonal_forward.include?(the_board.space)\
    || the_board.diagonal_back.uniq.length == 1 && !the_board.diagonal_back.include?(the_board.space) 
    then 
    puts "Player #{player_num[0]} wins! Game over!"
    the_board.game_status = "Game over!"
  end
  player_num = player_num.reverse
end


#plan: loop "player 1 move, player 2 move" until win for either player is achieved, or until a draw occurs. use until loop?
#instead of if statements, maybe make multiple arrays of instance variables named vertical and diagonal... horiz. already present.