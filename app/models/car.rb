class Car
  attr_reader :make, :year, :speed

  def initialize (make, year)
    @make = make
    @year = year
    @speed = 0
    @lights = "OFF"
    @ebrake = "Released"
    @color = "blank"
  end

  def accelerate
    @speed += 10
  end

  def brake
    if @speed <= 6
      @speed = 0
    else
    @speed -= 7
    end
  end

  def lights
    if @lights == "OFF"
      @lights = "ON"
    else
      @lights = "OFF"
    end
  end

  def ebrake
    @ebrake
  end

  def setEbreak(x)
    if x == "on"
      @ebrake = "Set"
    else
      @ebrake = "Released"
    end
  end

  def getColor
    @color
  end

  def setColor(color)
    @color = color
  end


end
