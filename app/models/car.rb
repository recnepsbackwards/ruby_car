class Car

  # Initialize car objects with make model and year
  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
    @speed = 0
  end

  def make
    @make
  end

  def model
    @model
  end

  def year
    @year
  end

  def speed
    @speed
  end

  def accelerate
    if !@parking_brake
      @speed += 10
    end
  end

  def brake
    if @speed >= 7
      @speed -= 7
    else
      @speed = 0
    end
  end

  def parking_brake
    @parking_brake
  end

  def toggle_parking_brake
    @parking_brake = !@parking_brake
  end
end
