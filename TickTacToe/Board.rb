class Board

  def initialize
    @board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    @player = @player
  end

  def board
    @board
  end

  def print_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def player_input(input)
    @board[gets.chomp.to_i - 1] = input
  end

end