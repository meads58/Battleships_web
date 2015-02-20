class Cell

	attr_accessor :content

  def initialize
    @hit = false
  end

  def shoot
    content.hit
    @hit = true
  end

  def hit?
    @hit
  end

  def view_display
    "S"
  end



end