class Airport
  def introduce
    puts "Welcome to the Airport"
  end
end

class Flight
  def introduce
    puts "Welcome to the Flight"
  end

end

module Teenager
  def self.food_opinion(food)
    "#{food.capitalize} is as good as it gets"
  end
end


puts Teenager.food_opinion("pizza")

