# edge = "#{"⣿\n" * 9}⣿"
# space = "#{'⠀'*25}\n"*10 << "#{'⠀'*25}"
# space2 = ""

# eye = "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⢀⣠⣴⡶⠾⣿⣿⣿⣿⣍⠻⢿⣦⠀⠀⠀⠀⠀⠀⠀
# ⠀⣀⣠⣴⣾⣿⣍⣁⡀⠀⠻⣿⣿⣿⠟⠀⢀⣹⣿⣷⣶⣶⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠲⠶⠶⠶⠾⠿⠛⠛⠋⠁⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
# crane = "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⣀⡖⢲⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⣠⡶⠟⠋⠙⢺⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⡼⠁⠀⠀⢀⣤⠟⢀⣠⡤⠤⠤⠤⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠁⠀⠀⣼⠋⢁⡴⠋⣹⠋⠉⠀⠀⠀⠉⠿⣆⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠈⠛⠛⢶⣄⡘⠿⠶⣶⣤⣤⣤⣤⣽⣿⣦⣀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⣿⠒⣶⠒⠒⠲⠶⠶⠶⢾⣟⢦⡀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⠀⢹⠄⠀⠀⠀⠀⠀⠀⠘⠃⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠀⢠⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⢀⣀⣾⣀⣠⣏⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
# ⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"



class Board
  attr_accessor :top, :middle, :bottom, :edge, :space, :eye, :crane

  def initialize()
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

  end

  def populate (position, edge = @edge, space = @space, eye = @eye, crane = @crane)

    def spaces
      edge.each_line.with_index do |line, index|
        eye_line = eye.lines[index].strip
        edge_line = edge.lines[index].strip
        crane_line = crane.lines[index].strip
        space_line = space.lines[index].strip
        
      puts line.strip + space_line + edge_line + space_line + edge_line +space_line + edge_line
      end
    end

    def left
      
    end

    def middle
    end

    def right
    end


    case position
    when "top left"
      spaces
      spaces
      spaces
    when "top middle"
    when "top right"
    when "middle left"
    when "middle middle"
    when "middle right"
    when "bottom left"
    when "bottom middle"
    when "bottom right"
    else
      puts "error"
    end



  end
end


board = Board.new

board.populate("top left")






# class Piece
#   attr_accessor :position, :type, :owner
#   def initialize(position, type, owner)
#     @type = type
#     @position = position
#     @owner = owner
#   end
# end












# puts 'Player 1 choose piece (crane or eye)'
# type = gets

# puts 'Player 1 move. State row and column e.g. \'top middle\'.'

# position = gets

# puts position

# system('clear')
# piece1 = Piece.new(position, type, 'player 1')


# def populate(top, middle, bottom)

# end



# edge.each_line.with_index do |line, index|
#    eye_line = eye.lines[index].strip
#    edge_line = edge.lines[index].strip
#    crane_line = crane.lines[index].strip
#    space_line = space.lines[index].strip
   
#   puts line.strip + space_line + edge_line + space_line + edge_line +space_line + edge_line
# end






# 3.times do
#   random_img_1 = [eye, crane, space].sample
#   random_img_2 = [eye, crane, space].sample
#   random_img_3 = [eye, crane, space].sample
  
#   edge.each_line.with_index do |line, index|

#     rand_img_1_line = random_img_1.lines[index].strip
#     rand_img_2_line = random_img_2.lines[index].strip
#     rand_img_3_line = random_img_3.lines[index].strip
#     eye_line = eye.lines[index].strip
#     edge_line = edge.lines[index].strip
#     crane_line = crane.lines[index].strip
    
#     puts line.strip + rand_img_1_line + edge_line + rand_img_2_line + edge_line + rand_img_3_line + edge_line
#   end
# end