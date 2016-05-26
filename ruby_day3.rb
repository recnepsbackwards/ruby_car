class Vehicle
  def initialize
    @model_year = 1995
    @lights_on = false
    @speed = 0
    @wheels = 4
  end

  def model_year
    @model_year
  end

  def lights_on
    @lights_on
  end

  def lights_on= switch
    @lights_on = switch
  end

  def speed
    @speed
  end

  def wheels
    @wheels
  end

  def speed_up number
    @speed = @speed + number
  end

  def slow_down number
    while @speed > number
      @speed = @speed - number
      if @speed <= number
        @speed = 0
      end
    end
  end
end

class Car < Vehicle
  def horn
    @horn = 'toot toot'
  end
end

class Tesla < Car
  def horn
    @horn = 'beep beep'
  end
end

class Tata < Car
end

class Toyota < Car
  def horn
    @horn = 'honk honk'
  end
end

class Garage
  def initialize
    @collection = []
  end

  def collection
    @collection
  end

  def add_car new_car
    @collection << new_car
  end

  # def park_cars
  #   @collection << Tesla.new
  #   @collection << Tesla.new
  #   @collection << Tesla.new
  #   @collection << Tata.new
  #   @collection << Toyota.new
  #   @collection << Tata.new
  #   @collection << Tesla.new
  #   @collection << Toyota.new
  # end


end
