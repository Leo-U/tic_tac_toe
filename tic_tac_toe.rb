class Board
  attr_accessor :top, :middle, :bottom, :game_status, :x, :o, :piece_arr
  attr_reader :space, :section_top, :top_left_gap, :top_left_vert, :top_right_vert, :upper_horiz, :middle_left_gap, :middle_left_vert, :middle_right_vert, :lower_horiz, :bottom_left_gap, :bottom_left_vert, :bottom_right_vert, :section_bottom, :vert_left, :vert_middle, :vert_right, :diag_forward, :diag_back, :total, :total_2, :x1, :x2, :x3, :x4, :o1, :o2, :o3, :o4
  
  def initialize
    @section_top = "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    
    @top_left_gap = "⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀"
    
    @top_left_vert = "⠀⠀⠀⢸⣿⠀⠀⠀⠀
    ⠀⠀⠀⢸⣿⠀⠀⠀⠀
    ⠀⠀⠀⣾⣿⡇⠀⠀⠀
    ⠀⠀⠀⣽⣿⡇⠀⠀⠀
    ⠀⠀⠀⣿⣿⡇⠀⠀⠀
    ⠀⠀⠀⣿⣿⡇⠀⠀⠀
    ⠀⠀⠀⣿⣿⣷⠀⠀⠀"
    
    @top_right_vert = "⠀⠀⠀⢀⣿⣿⣿⡇⠀⠀⠀⠀⠀
    ⠀⠀⠀⢸⣿⣿⣿⠃⠀⠀⠀⠀⠀
    ⠀⠀⠀⣼⣿⣿⣿⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀
    ⠀⠀⢰⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀
    ⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀"
    
    @upper_horiz = "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⡀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⠀⣀⣀⣀⣀⣀⣀⣀⣤⣤⣤⣤⣤⣤⣤⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⣀⣀⣀⣀⣠⣤⣤⣤⣤⣤⣴⣤⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠟⠛⠛⠛⠛⠛⠛⠛⠛⠛⠉⠉⠉
⠀⠉⠙⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⣿⣿⣿⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⢩⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    
    
    @middle_left_gap = "⠀⠀⠀⠀
    ⠀⠀⠀⠀
    ⠀⠀⠀⠀
    ⠀⠀⠀⠀
    ⠀⠀⠀⠀
    ⠀⠀⠀⠀
    ⠀⠀⠀⠀"
    
    @middle_left_vert = "⠀⠀⠀⢰⣿⣿⣿⠀⠀
    ⠀⠀⠀⢸⣿⣿⣿⠀⠀
    ⠀⠀⠀⢸⣿⣿⣿⠀⠀
    ⠀⠀⠀⢸⣿⣿⣿⠀⠀
    ⠀⠀⠀⣾⣿⣿⣿⠀⠀
    ⠀⠀⠀⣿⣿⣿⣿⠀⠀
    ⠀⠀⠀⣿⣿⣿⣿⠀⠀"
    
    @middle_right_vert = "⠀⠀⢸⣿⣿⣿⡇⠀⠀⠀
    ⠀⠀⢸⣿⣿⣿⠁⠀⠀⠀
    ⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀
    ⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀
    ⠀⠀⠐⣿⣿⣿⠀⠀⠀⠀
    ⠀⠀⠸⣿⣿⣿⠀⠀⠀⠀
    ⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀"
    
    @lower_horiz = "⠀⢀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣠⣿⣿⣿⣿⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣿⣿⣿⣀⢀⡀⣀⡀⣀⡀⣀⣀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣶⣶⠶⠶⠖⠂⠀
⠀⠈⠉⠉⠉⠉⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⢻⣿⣿⣿⡟⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠋⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⣿⣿⡿⠉⠉⠉⠉⠉⠉⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    
    
    @bottom_left_gap = "⠀⠀⠀
    ⠀⠀⠀
    ⠀⠀⠀
    ⠀⠀⠀
    ⠀⠀⠀
    ⠀⠀⠀
    ⠀⠀⠀"
    
    @bottom_left_vert = "⠀⠀⠀⢸⣿⣿⣿⡇⠀⠀
    ⠀⠀⠀⢸⣿⣿⣿⡇⠀⠀
    ⠀⠀⠀⢸⣿⣿⣿⠇⠀⠀
    ⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀
    ⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀
    ⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀
    ⠀⠀⠀⢸⣿⣿⡟⠀⠀⠀"
    
    @bottom_right_vert = "⠀⠀⠀⢻⣿⡗⠀⠀⠀
    ⠀⠀⠀⢸⣿⡇⠀⠀⠀
    ⠀⠀⠀⢸⣿⡇⠀⠀⠀
    ⠀⠀⠀⠘⣿⡇⠀⠀⠀
    ⠀⠀⠀⠀⣿⡇⠀⠀⠀
    ⠀⠀⠀⠀⣿⡇⠀⠀⠀
    ⠀⠀⠀⠀⢹⠀⠀⠀⠀"
    
    @section_bottom = "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠿⢛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    
    @x1 = "⢠⣶⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀
    ⠈⢿⣿⣿⣆⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⡆
    ⠀⠈⢿⣿⣿⣦⡀⠀⢀⣠⣾⣿⣿⡿⠋⠀
    ⠀⠀⠀⠹⣿⣿⣷⣴⣿⣿⣿⠟⠋⠀⠀⠀
    ⠀⠀⠀⠀⣨⣿⣿⣿⣿⡋⠁⠀⠀⠀⠀⠀
    ⠀⣀⣤⣾⡿⠟⠋⠻⣿⣷⣄⠀⠀⠀⠀⠀
    ⠈⠉⠉⠁⠀⠀⠀⠀⠀⠙⠻⢧⠀⠀⠀⠀"
    
    @x2 = "⠀⣤⣶⣶⡀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀
    ⠀⢻⣿⣿⣿⣆⠀⠀⠀⢀⣠⣶⣿⣿⣿⡆
    ⠀⠀⠻⣿⣿⣿⣧⣠⣶⣿⣿⣿⣿⡿⠟⠁
    ⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⠿⠛⠉⠀⠀⠀
    ⠀⠀⣠⣾⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀
    ⣴⣿⡿⠟⠋⠁⠀⠙⠻⣿⣿⣦⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⠷⠀⠀⠀"
    
    @x3 = "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⣶⣾⣦⠀⠀⠀⢀⣀⣤⣶⣶⣶⣆
    ⠀⠀⠀⠹⣿⣿⣷⣤⣶⣿⣿⣿⡿⠿⠛⠁
    ⠀⠀⠀⢀⣼⣿⣿⣿⣿⣟⠋⠁⠀⠀⠀⠀
    ⠀⢠⣶⣿⠿⠛⠉⠻⢿⣿⣷⣄⠀⠀⠀⠀
    ⠰⠟⠉⠀⠀⠀⠀⠀⠀⠈⠙⠻⢧⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    @x4 = "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⢀⣤⣄⠀⠀⠀⠀⠀⠀⣀⣤⣶⣾⣆
    ⠀⠀⢸⣿⣿⣦⠀⢀⣤⣶⣿⣿⣿⣿⠟⠃
    ⠀⠀⠀⠻⣿⣿⣿⣿⣿⡿⠿⠛⠉⠀⠀⠀
    ⠀⢀⣴⣾⣿⡿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀
    ⢠⡾⠟⠋⠀⠀⠀⠙⠻⣿⣧⡀⠀⠀⠀⠀
    ⠈⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠷⠀⠀⠀⠀"
    
    @o1 = "⠀⠀⠀⠀⣀⣤⣶⣾⣿⣷⣶⣤⡀⠀⠀⠀
    ⠀⠀⣠⣾⣿⣿⣿⡿⠿⠿⠿⠿⣿⣦⠀⠀
    ⠀⢠⣿⣿⡟⠋⠁⠀⠀⠀⠀⠀⢸⣿⣇⠀
    ⠀⣸⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡿⠀
    ⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⠃⠀
    ⠀⠘⣿⣿⣦⣀⣀⣀⣠⣤⣾⣿⡟⠁⠀⠀
    ⠀⠀⠈⠛⠿⠿⠿⣿⠿⠟⠛⠁⠀⠀⠀⠀"
    
    @o2 = "⠀⠀⠀⠀⢀⣤⣶⣾⣿⣷⣶⡄⠀⠀⠀⠀
    ⠀⠀⠀⣠⣿⣿⣿⣿⠿⠻⣿⡀⠀⠀⠀⠀
    ⠀⠀⢰⣿⣿⣿⠏⠁⠀⠀⠸⣿⣆⠀⠀⠀
    ⠀⠀⣾⣿⣿⡇⠀⠀⠀⠀⠀⢹⣿⡆⠀⠀
    ⠀⠀⢿⣿⣿⡇⠀⠀⠀⠀⠀⣸⣿⡿⠀⠀
    ⠀⠀⠸⣿⣿⣷⣦⣤⣤⣤⣶⣿⣿⠃⠀⠀
    ⠀⠀⠀⠈⠻⢿⣿⣿⣿⠿⠿⠛⠁⠀⠀⠀"
    
    @o3 = "⠀⠀⠀⠀⠀⠀⣀⣤⣴⣶⣶⣦⣀⠀⠀⠀
    ⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀
    ⠀⠀⣴⣿⣿⣿⠟⠉⠀⠀⠀⠀⠸⣿⡆⠀
    ⠀⢸⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⢀⣿⡇⠀
    ⠀⢿⣿⣿⡀⠀⠀⠀⠀⠀⣀⣠⣾⣿⠇⠀
    ⠀⠸⣿⣿⣷⣤⣤⣤⣶⣾⣿⡿⠟⠁⠀⠀
    ⠀⠀⠈⠻⢿⣿⣿⠿⠿⠛⠉⠀⠀⠀⠀⠀"
    
    @o4 = "⠀⠀⠀⠀⢀⣴⣶⣾⣿⣶⣶⠄⠀⠀⠀⠀
    ⠀⠀⠀⣰⣿⣿⡿⠛⠛⠛⢿⣦⡀⠀⠀⠀
    ⠀⠀⢰⣿⣿⡟⠀⠀⠀⠀⠀⠈⢿⣷⡀⠀
    ⠀⠀⣼⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⣿⣷⠀
    ⠀⠀⢿⣿⣿⠀⠀⠀⠀⠀⠀⢀⣴⣿⡏⠀
    ⠀⠀⢸⣿⣿⣦⣤⣤⣤⣶⣾⣿⡿⠋⠀⠀
    ⠀⠀⠀⠙⠿⠿⠿⠿⠿⠟⠋⠉⠀⠀⠀⠀"
    
    @space = "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    @x = [@x1, @x2, @x3, @x4]
    @o = [@o1, @o2, @o3, @o4]

    @top = [@space, @space, @space]
    @middle = [@space, @space, @space]
    @bottom = [@space, @space, @space]
    @game_status = "ongoing"
    @piece_arr = []
  end

  def assign_for_win_check
    @vert_left = [@top[0], @middle[0], @bottom[0]]
    @vert_middle = [@top[1], @middle[1], @bottom[1]]
    @vert_right = [@top[2], @middle[2], @bottom[2]]
    @diag_forward = [@bottom[0], @middle[1], @top[2]]
    @diag_back = [@top[0], @middle[1], @bottom[2]]
    @total = [@top, @middle, @bottom, @vert_left, @vert_middle, @vert_right, @diag_forward, @diag_back]
    @total_2 = [@top, @middle, @bottom]
  end

  def game_won?
    @total.any?{|el| el.all? {|e| @piece_arr.include?(e)}}
  end

  def print_board_row (row, left_sp, left_div, right_div)
    left_sp.each_line.with_index do |line, index|
      puts line.strip + row[0].lines[index].strip + left_div.lines[index].strip + row[1].lines[index].strip + right_div.lines[index].strip + row[2].lines[index].strip
    end
  end
  
  def print_board
    puts self.section_top
    self.print_board_row(self.top, self.top_left_gap, self.top_left_vert, self.top_right_vert)
    puts self.upper_horiz
    self.print_board_row(self.middle, self.middle_left_gap, self.middle_left_vert, self.middle_right_vert)
    puts self.lower_horiz
    self.print_board_row(self.bottom, self.bottom_left_gap, self.bottom_left_vert, self.bottom_right_vert)
    puts self.section_bottom
  end
end

the_board = Board.new
system'clear'
the_board.print_board

player_switch = [1, 2]

typo_str = "Typo. Try again."
type = ''

loop do
  puts 'Player 1 choose piece (X or O).'
  type = gets.chomp.downcase
  break if type == 'o' || type == 'x'
  puts typo_str
end

system'clear'
the_board.print_board

if type == "x"
  type_switch = [the_board.x[0], the_board.o[0]]
elsif type == "o"
  type_switch = [the_board.o[0], the_board.x[0]]
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
  else
    puts typo_str
    redo
  end

  case position[0]
  when "top"
    x = the_board.top
  when "middle"
    x = the_board.middle
  when "bottom"
    x = the_board.bottom
  else
    puts typo_str
    redo
  end

  if x[position[1]] == the_board.space
    x[position[1]] = type_switch[0]
  else
    puts "Please choose an empty space."
    redo
  end

  if the_board.x.include?(type_switch[0])
    the_board.x.rotate!
    type_switch[0] = the_board.x[0]
    the_board.piece_arr = the_board.x
  elsif the_board.o.include?(type_switch[0])
    the_board.o.rotate!
    type_switch[0] = the_board.o[0]
    the_board.piece_arr = the_board.o
  end

  system'clear'
  the_board.print_board

  the_board.assign_for_win_check

  if the_board.game_won? then 
    puts "Player #{player_switch[0]} wins! Game over!"
    the_board.game_status = "victory"  
  elsif the_board.total_2.flatten.count(the_board.space) <= 2
    check_for_draw = Marshal.load( Marshal.dump(the_board))
    check_for_draw_2 = Marshal.load( Marshal.dump(the_board))
    draw_switch = type_switch

    def draw_check(board, draw_switch, the_board)
      2.times do
        if board.top.include?(board.space)
          board.top[board.top.index(board.space)] = draw_switch[0]
        elsif board.middle.include?(board.space)
          board.middle[board.middle.index(board.space)] = draw_switch[0]
        elsif board.bottom.include?(board.space)
          board.bottom[board.bottom.index(board.space)] = draw_switch[0]
        end
        draw_switch = draw_switch.reverse
      end
      board.assign_for_win_check
    end

    draw_check(check_for_draw, draw_switch, the_board)
    draw_switch = draw_switch.reverse
    draw_check(check_for_draw_2, draw_switch, the_board)

    if !check_for_draw.game_won? && !check_for_draw_2.game_won?
      puts "It's a draw. Game over."
      the_board.game_status = "draw"
    end
  end

  player_switch = player_switch.reverse
  type_switch = type_switch.reverse
end
