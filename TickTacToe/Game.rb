require 'colorize'

class Game

  def initialize
    @board = Board.new
    @player1 = Player1.new
    @player2 = Player2.new
  end



  def switch_turn
    if @player1.is_turn
      @player1.is_turn(false)
      @player2.is_turn(true)
    else
      @player1.is_turn(true)
      @player2.is_turn(false)
    end
  end
  def play

    while true
      if @player1.is_turn
        puts "Player 1's turn"
        @board.print_board
        @board.player_input("X".colorize(:color => :red))
      else
        puts "Player 2's turn"
        @board.print_board
        @board.player_input("O".colorize(:color => :blue))
      end
      1

      def check_winner
        if @board.board[0] == @board.board[1] && @board.board[1] == @board.board[2]
          return true
        elsif @board.board[3] == @board.board[4] && @board.board[4] == @board.board[5]
          return true
        elsif @board.board[6] == @board.board[7] && @board.board[7] == @board.board[8]
          return true
        elsif @board.board[0] == @board.board[3] && @board.board[3] == @board.board[6]
          return true
        elsif @board.board[1] == @board.board[4] && @board.board[4] == @board.board[7]
          return true
        elsif @board.board[2] == @board.board[5] && @board.board[5] == @board.board[8]
          return true
        elsif @board.board[0] == @board.board[4] && @board.board[4] == @board.board[8]
          return true
        elsif @board.board[2] == @board.board[4] && @board.board[4] == @board.board[6]
          return true
        else
          return false
        end
      end


      if check_winner
        if
        check_tie
          puts "Tie"
        elsif
        @player1.is_turn
          puts "Player 1 wins"
        else
          puts "Player 2 wins"
        end
        break

      else
        switch_turn
      end
    end


  end

end