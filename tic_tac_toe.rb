class Board
  attr_accessor :top, :middle, :bottom, :game_status
  attr_reader :eye, :bird, :vertical_left, :vertical_middle, :vertical_right, :diagonal_forward, :diagonal_back, :total, :space
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

  def assign_data_for_conditionals
    @vertical_left = [@top[0], @middle[0], @bottom[0]]
    @vertical_middle = [@top[1], @middle[1], @bottom[1]]
    @vertical_right = [@top[2], @middle[2], @bottom[2]]
    @diagonal_forward = [@bottom[0], @middle[1], @top[2]]
    @diagonal_back = [@top[0], @middle[1], @bottom[2]]
    @total = [@top, @middle, @bottom]
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

player_switch = [1, 2]

puts 'Player 1 choose piece (bird or eye).'
type = gets

system'clear'
the_board.print_board

if type == "bird\n"
  type_switch = [the_board.bird, the_board.eye]
elsif type == "eye\n"
  type_switch = [the_board.eye, the_board.bird]
end

until the_board.game_status == "victory" || the_board.game_status == "draw" do
  puts "Player #{player_switch[0]} move. State row followed by column e.g. \'top middle\'."

  position = gets.split

  case position[1]
  when "left"
    position[1] = 0
  when "middle"
    position[1] = 1
  when "right"
    position[1] = 2
  end

  str = "Please choose an empty space."

  case position[0]
  when "top"
    if the_board.top[position[1]] == the_board.space
      the_board.top[position[1]] = type_switch[0]
    else
      puts str
      redo
    end
  when "middle"
    if the_board.middle[position[1]] == the_board.space
      the_board.middle[position[1]] = type_switch[0]
    else
      puts str
      redo
    end
  when "bottom"
    if the_board.bottom[position[1]] == the_board.space
      the_board.bottom[position[1]] = type_switch[0]
    else
      puts str
      redo
    end
  end

  system'clear'
  the_board.print_board

  the_board.assign_data_for_conditionals

  def game_won?(the_board)
    the_board.top.uniq.length == 1 && !the_board.top.include?(the_board.space)\
    || the_board.middle.uniq.length == 1 && !the_board.middle.include?(the_board.space)\
    || the_board.bottom.uniq.length == 1 && !the_board.bottom.include?(the_board.space)\
    || the_board.vertical_left.uniq.length == 1 && !the_board.vertical_left.include?(the_board.space)\
    || the_board.vertical_middle.uniq.length == 1 && !the_board.vertical_middle.include?(the_board.space)\
    || the_board.vertical_right.uniq.length == 1 && !the_board.vertical_right.include?(the_board.space)\
    || the_board.diagonal_forward.uniq.length == 1 && !the_board.diagonal_forward.include?(the_board.space)\
    || the_board.diagonal_back.uniq.length == 1 && !the_board.diagonal_back.include?(the_board.space) 
  end

  if game_won?(the_board) then 
    puts "Player #{player_switch[0]} wins! Game over!"
    the_board.game_status = "victory"
  elsif !the_board.total.flatten.include?(the_board.space) && !game_won?(the_board)
    puts "It's a draw."
    the_board.game_status = "draw"
  end

  player_switch = player_switch.reverse
  type_switch = type_switch.reverse
end

#plan: loop "player 1 move, player 2 move" until win for either player is achieved, or until a draw occurs. use until loop?
#instead of if statements, maybe make multiple arrays of instance variables named vertical and diagonal... horiz. already present.