# class Vehicle
class Vehicle
  def initialize
    @model_year = '2005'
    @lights = false
  end

  def lights_on(x)
    @lights = x
  end

  def lights_on?
    @lights
  end

  def model_year
    @model_year
  end
end

# Car class inhereits from Vehicle
class Car < Vehicle
  def initialize
    @wheels = 4
    @speed = 0
  end

  def number_of_wheels
    @wheels
  end

  def current_speed
    @speed
  end

  def speed_up_by (amount)
    @speed += amount
  end

  def slow_down_by (amount)
    @speed -= amount
  end

  def model_year
    @model_year
  end

  def car_make
    self.class.to_s
  end

end

class Tesla < Car
  def initialize (model_year)
    @model_year = model_year
    @speed = 0
  end

  # Purpose: Speed up the Tesla by 10 speed mph
  # Signature: (nothing) returns nothing
  # Example:
  # myTesla.current_speed -> 0
  # myTesla.speed_up  -> nothing
  # myTesla.current_speed -> 10
  #
  def speed_up
    speed_up_by (10)
  end

  def slow_down
    slow_down_by (7)
  end

  def model_year
    @model_year
  end
end

class Tata < Car
  def initialize (model_year)
    @model_year = model_year
    @speed = 0
  end

  def speed_up
    speed_up_by (2)
  end

  def slow_down
    slow_down_by 1.25
  end

  def model_year
    @model_year
  end
end

class Toyota < Car
  def initialize model_year
    @model_year = model_year
    @speed = 0
  end

  def speed_up
    speed_up_by 7
  end

  def slow_down
    slow_down_by 5
  end

  def model_year
    @model_year
  end
end


# Purpose: Creating a class for a collection of cars
# Signature: (nothing) returns nothing; inherits from Car class
# Formula:
# aCollection = Collection.new
#
#
#

class Collection < Car
  def initialize
    @collection = []
  end

  # Purpose: Adds a car into collection array
  # Signature: (a_car) from the Car class and shovels into collection array returns nothing
  # Formula:
  # aCollection.add_car_to_collection(a_car)
  # => nothing

  def add_car_to_collection new_car
    @collection << new_car
  end

  # Purpose: Show all added cars in collection
  # Signature: (nothing) returns an array, each element displays its class and model year that have been added by add_car_to_collection method
  # Formula:
  # aCollection.get_collection
  # => ["Tesla 2010", "Tesla 2012"]

  def show_obj
    @collection
  end

  def get_collection
    @collection.map {|car| car.car_make + " " + car.model_year.to_s }
  end

  def sort_by_car_make
    @collection = @collection.sort {|car1, car2| car1.car_make <=> car2.car_make }
  end

  def sort_by_year
    @collection = @collection.sort {|car1, car2| car1.model_year <=> car2.model_year}
  end

  def sort_by_both
    @collection = @collection.sort do |car1, car2|
      if car1.car_make != car2.car_make
        car1.car_make <=> car2.car_make
      else
        car1.model_year.to_i - car2.model_year.to_i
      end
    end
  end
end


myVehicle = Vehicle.new
# puts myVehicle.model_year
myCar = Car.new
# puts myCar.number_of_wheels
myTesla = Tesla.new("2015")
myTeslaTwo = Tesla.new("2012")
myCollection = Collection.new
myCollection.add_car_to_collection(myTesla)
myCollection.add_car_to_collection(myTeslaTwo)
myCollection.add_car_to_collection(Tata.new("2008"))
# p myCollection.get_collection.sort
# p myCollection.sort_by_year
myCollection.sort_by_both
p myCollection.show_obj

# puts myTesla.model_year
# myTata=Tata.new(2010)
# myToyota=Toyota.new(2010)

# puts myVehicle.lights_on?
# myVehicle.lights_on = true
# puts myVehicle.lights_on?
# myVehicle.lights_on = false
# puts myVehicle.lights_on?
# puts myCar.speed_up
# puts myCar.slow_down
# p myTesla
# p myTeslaTwo
# myTesla.speed_up
# myTesla.speed_up
# myTesla.speed_up
# puts myTesla.current_speed
# myTesla.slow_down
# puts myTesla.current_speed
