class Board

  attr_accessor :board
  def initialize
    @board = [["_","_","_","_","_"],
              ["_","_","_","_","_"],
              ["_","_","_","_","_"],
              ["_","_","_","_","_"],
              ["_","_","_","_","_"],
              ["_","_","_","_","_"]]
  end

  def print_board

    puts " #{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]} | #{@board[0][3]} | #{@board[0][4]} "
    puts "-------------------"
    puts " #{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]} | #{@board[1][3]} | #{@board[1][4]} "
    puts "-------------------"
    puts " #{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]} | #{@board[2][3]} | #{@board[2][4]} "
    puts "-------------------"
    puts " #{@board[3][0]} | #{@board[3][1]} | #{@board[3][2]} | #{@board[3][3]} | #{@board[3][4]} "
    puts "-------------------"
    puts " #{@board[4][0]} | #{@board[4][1]} | #{@board[4][2]} | #{@board[4][3]} | #{@board[4][4]} "
    puts "-------------------"
    puts " #{@board[5][0]} | #{@board[5][1]} | #{@board[5][2]} | #{@board[5][3]} | #{@board[5][4]} "

  end

end

