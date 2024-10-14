def caesar_cipher(string, shift_number)
  alphabet = "abcdefghijklmnopqrstuvwxyz".split("")

  solved_puzzle = String.new

  code = string.split""
  shift = shift_number



  code.each do |i|
    if i.match?(/[a-zA-Z]/)
      position = alphabet.index(i.downcase)
      next_index = (position + shift) % 26
      if i.upcase == i
        solved_puzzle += alphabet[next_index].upcase
      else
      solved_puzzle += alphabet[next_index]
      end

    else
      solved_puzzle += i
    end

  end

  puts solved_puzzle

  end


caesar_cipher("What a string!", 5)

