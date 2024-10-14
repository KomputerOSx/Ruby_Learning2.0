class Player1

  def initialize
    @player = "X"
    @is_turn = true
  end

  def is_turn(value=nil)
    if value.nil?
      @is_turn
    else
      @is_turn = value
    end
  end

end

class Player2

  def initialize
    @player = "O"
    @is_turn = false

  end
  def is_turn(value=nil)
    if value.nil?
      @is_turn
    else
      @is_turn = value
    end
  end
end