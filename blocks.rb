# frozen_string_literal: true

require 'time'

# def logger
#   yield("test")
#   yield("this is really cool")
# end
#
# logger { |word| puts word}

class BakingApp



  def initialize
    @transactions = [10, -15, 25, 30, -24, -70, 999]
  end

  def transaction_statement
    @transactions.each do |transaction|
      yield transaction
      yield transaction 
      puts "this is a gap"
    end
  end
end

barclays = BakingApp.new

# barclays.transaction_statement do |transaction|
#   puts transaction
# end

my_lambda = lambda { puts "my lambda"}

my_lambda.call

my_age = lambda { |age| puts "I am #{age} years old" }

my_age.call(23)