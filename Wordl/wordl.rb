#get a 5 letter word
# keep track of 6 turns
# color yellow corect letter if in word but not right position
# color green letter if in right position
# display remaining letters
# ignore used letters
# a way to display all entries

require_relative 'Board'
require_relative 'Player'
require 'colorize'
class Board

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
    puts "-----------"
    puts " #{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]} | #{@board[1][3]} | #{@board[1][4]} "
    puts "-----------"
    puts " #{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]} | #{@board[2][3]} | #{@board[2][4]} "
    puts "-----------"
    puts " #{@board[3][0]} | #{@board[3][1]} | #{@board[3][2]} | #{@board[3][3]} | #{@board[3][4]} "
    puts "-----------"
    puts " #{@board[4][0]} | #{@board[4][1]} | #{@board[4][2]} | #{@board[4][3]} | #{@board[4][4]} "
    puts "-----------"
    puts " #{@board[5][0]} | #{@board[5][1]} | #{@board[5][2]} | #{@board[5][3]} | #{@board[5][4]} "

  end

  def remaining_letters
    remaining_letters =
  end

end

class Game

  def initialize
    @board = Board.new
    @player = Player.new
    @secret_word = SecretWord.new
    @used_letters = []
    @turns = 6
  end

  def player_input
    print "Enter a letter: "
    @player.guess = gets.chomp
    @used_letters << @player.guess
    @player.guess.split("").each_with_index do |letter, index|
      @board[@turns-1][index] = letter
    end

    return @player.guess
  end
  def turn_tracker
    if @turns > 0
      puts "Turns left: #{@turns}"
    else
      puts "You lose"
    end
  end

  def next_turn
    @turns -= 1
  end

  def check_guess
    player_input.each_char.with_index do |letter, index|

      if letter == @secret_word[index]
        @board[@turns-1][index] = letter.colorize(:color => :green)

      elsif @secret_word.include?(letter)
        @board[@turns-1][index] = letter.colorize(:color => :yellow)

      els


      end
    end
  end

end