


##attempt_1
# def substrings1(string, dictionary)
#
#
#   dictionary_map = dictionary.each_with_object({}) { |x, h| h[x] = 0 }
#   my_string = string.scan(/\w+/)
#
#   dictionary.each do |word|
#
#     my_string.each do |i|
#
#       if i.include?(word)
#         dictionary_map[word] += 1
#       end
#     end
#   end
#   puts "this is substring 1"
#   puts dictionary_map.select { |k,v| v > 0 }
# end


##attempt_2
def substrings2(string, dictionary)
  my_string = string.downcase
  dictionary_map = Hash.new

  dictionary.each do |word|
      result = my_string.scan(word).length
      dictionary_map[word] = result unless result == 0
  end
  puts "this is substring 2"
  puts dictionary_map

end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "allow"]
#puts dictionary.map {|k, v| [k,0]}
#substrings2("Howdy partner, sit down! How's it going?", dictionary)

def substrings3(string, dictionary)
  string.downcase!
  dictionary.map do |substring|
    [substring, string.scan(substring.downcase).size]
  end.select { |_, count| count > 0 }.to_h
end


puts substrings3("Howdy partner, sit down! How's it going?", dictionary)
# my_hash = {}
#
# my_hash.merge!("test" => 1, "ANIMAL" => 56)
#
# puts my_hash["test"]
