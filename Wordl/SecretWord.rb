

class SecretWord
attr_accessor :word, :player_input

  def initialize
    @word = get_random_5_letter_word
  end
  def get_random_5_letter_word
    word_list = File.read('D:\Coding\Ruby\Wordl\words_alpha.txt').split("\n")

    five_letter_words = word_list.select { |word| word.length == 5 }

    five_letter_words.sample
  end



end
