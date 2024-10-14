require 'uri'
require 'net/http'

class SecretWord
  def initialize
    @secret_word = get_random_5_letter_word
  end
  def get_random_5_letter_word
    url = 'https://raw.githubusercontent.com/dwyl/english-words/master/words_alpha.txt'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    words = response.split("\n")

    5_letter_words = words.select { |word| word.length == 5 }

    random_word = 5_letter_words.sample

    random_word
  end

end