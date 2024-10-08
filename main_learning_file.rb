

#name = "Tim "  # Note the space after "Tim"

#if name ==  "Tim"
#  puts "hi , #{name}"
#elsif name == "Robert"
#  puts "i dont like you #{name}"
#else
#  puts "I dont like you"
#end

#this is a comment that i can write for myselS


=begin
def gets_full_name(first_name, last_name)
  name = first_name + " "+ last_name

  puts name
end

print("What is the first name?\n")
first_name = gets.chomp

print("what is the last name?\n")
last_name = gets.chomp

gets_full_name(first_name, last_name)
=end



=begin total = 0

[45,2,3].each { |number| total+= number}
puts total

[1,2,3,4].each do |number|
  total+= number
  end

[1,2,3,4].each {|adverb| total+= adverb}=end


 =end
=begin
age = 23
name = "ramyar"

if name.length > 5
  name.length.times do
    puts age
  end
  end
=end

#puts "This is really cool" if (5.to_s).eql?("5")


=begin
grade  = "b"

did_i_pass = case grade.upcase

  when "A" then "Hell Yeah!"
  when "D" then "Almost there"
  else "This is REALLY BAD!!"
end

puts did_i_pass
=end

=begin
puts "Enter a number"
number = gets.chomp.to_i

if number == 1
    puts "you have entered 1"
elsif number == 2
  puts "you have entered 2"
else
  puts "WE ONLY ACCEPT 1 OR 2"
end

=end

=begin
i = 0

loop do
  puts "The current number is #{i}"
  i += 1
  if i == 10
    puts "THIS IS THE FINAL NUMBER AT #{i}"
    break
  end
end

=end


=begin
i = 0

while i < 10 do
  puts "i is #{i}"
  i += 1
end
=end
=begin

while gets.chomp != "yes" do
  puts "Are we there yet?"
end
puts"\nThis is the end of the RIDE"
=end
=begin
i = 0
until i == 10 do
  puts "i is #{i}"
  i += 1
end
=end

=begin
puts "Whats your favourite food?"

until gets.chomp == "yes" do
  puts "But do you like pizzas?"
end

puts "See, you do like pizza and its your favourite food"

=end

=begin
5.times do |i|
  puts "Hi this is the #{i} number of times im calling"
end
=end

=begin
5.upto(8) do |i|
  puts "Hi this is the #{i} number of times im calling"
end
=end



rabbit = {
  name: "Flopsy",
  species: "Rabbit",
  age: 2,
  weight: 3.5,
  favorite_food: "Carrots",
  favorite_activity: "Hopping"
}

dog = {
  name: "Scooby",
  species: "Magical",
  weight: 22,
  favourite_food: "Pizza",
  favourite_activity: "Solving Crime"
}

# dog.each_key { |key| puts key }
# dog.each_value { |key| puts key }
#
# dog.each { |key, value| puts "#{key} is #{value}" }


# # Sum two numbers
# #
# # @param number1 [Integer] The first number
# # @param number2 [Integer] The second number
# # @return [Integer] The sum of the two numbers
#
# def sum(number1 = 0, number2 = 0)
#   number1 + number2
# end
#
# my_number = sum(1,3)
#
# puts my_number.is_a? Numeric
#
#

# def even_odd(number)
#   unless number.is_a? Numeric
#     "A number was not entered."
#   end
#
#   if number % 2 == 0
#     "That is an even number."
#   else
#     "That is an odd number."
#   end
# end
#
# puts even_odd(20) #=> That is an even number.
# puts even_odd("Ruby") #=>  A number was not entered.
#


def isogram?(string)
  p original_length = string.length
  p string_array = string.downcase.split("")
  p unique_length = string_array.uniq.length
  p original_length == unique_length
end
puts "\n"
puts isogram?("Odin")


