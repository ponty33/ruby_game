class Player
  attr_reader :name
  attr_accessor :life
  def initialize(num)
    @name = "Player #{num}"
    @life = 3
    # @is_alive = true
  end

  def name
    @name
  end

  def minus
    @life -= 1
  end

end