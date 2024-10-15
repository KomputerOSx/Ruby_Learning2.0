# get a 5 letter word
# keep track of 6 turns
# color yellow corect letter if in word but not right position
# color green letter if in right position
# display remaining letters
# ignore used letters
# a way to display all entries

require_relative 'Board'
require_relative 'SecretWord'
require 'colorize'
require 'uri'
require 'net/http'


class Game
  attr_accessor :board, :player, :secret_word, :letters_left, :used_letters, :turns
  def initialize
    @board = Board.new
    @secret_word = SecretWord.new
    @letters_left = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    @used_letters = []
    @turns = 6
  end
  def check_real_5_letter_word?(word)
    if word.length != 5
      puts "\nWord must be 5 letters long"
      return false
    end

    word_list = File.read('D:\Coding\Ruby\Wordl\words_alpha.txt').split("\n")

    if word_list.include?(word.downcase)
      return true
    else
      puts "\nWord is not a real 5-letter English word"
      return false
    end
  end
  def turn_tracker
    if @turns > 0
      puts "\nTurns left: #{@turns}"
    else
      puts "\nYou lose"
      puts "\nThe word was #{@secret_word.word.colorize(:color => :red)}"
      exit
    end
  end

  def check_win (player_guess)
    if player_guess == secret_word.word
      return true
    else
      return false
    end

  end

  def next_turn
    @turns -= 1
  end

  def play
    while true

      turn_tracker()

      print "\nEnter a 5 letter Word: "
      player_guess = gets.chomp.downcase

      unless check_real_5_letter_word?(player_guess)
        redo
      end

      if @used_letters.any? { |letter| player_guess.include?(letter) }
        puts "\nPlease Use New Letters".colorize(:color => :red)
        redo
      end

      player_guess.chars.each_with_index do |letter, index|

        if @secret_word.word[index] == letter
          @board.board[6-@turns][index] = letter.colorize(:color => :green)
        elsif @secret_word.word.include?(letter)
          @board.board[6-@turns][index] = letter.colorize(:color => :yellow)
        else
          @board.board[6-@turns][index] = letter
          @used_letters << letter
          @letters_left.delete(letter)
        end

      end

      if check_win(player_guess)
        @board.print_board
        puts "\nYou Win".colorize(:color => :green)
        break
      end

      @board.print_board
      puts "\nRemaining Letters: \n #{@letters_left}"



      next_turn()


    end

  end

end


wordl = Game.new
puts wordl.secret_word.word

wordl.board.print_board


wordl.play