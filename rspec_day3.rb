require 'rspec'
require_relative 'ruby_day3'

describe Car do
  it 'should be a thing' do
    expect { Car.new }.to_not raise_error
  end

  it 'should make a new car' do
    my_car = Car.new
    expect(my_car).to be_a Car
  end

  it 'should have four wheels' do
    my_car = Car.new
    expect(my_car.wheels).to eq 4
  end

  it 'should have a speed' do
    my_car = Car.new
    expect(my_car.speed).to eq 0
  end

  it 'should increase speed' do
    my_car = Car.new
    expect { my_car.speed_up(10) }.to change { my_car.speed }.from(0).to(10)
  end

  it 'should slow down to zero' do
    my_car = Car.new
    my_car.speed_up(70)
    expect { my_car.slow_down(8) }.to change { my_car.speed }.from(70).to(0)
  end

  it 'the horn should go toot toot' do
    my_car = Car.new
    expect(my_car.horn).to eq 'toot toot'
  end
end

describe Vehicle do
  it 'should be a thing' do
    expect { Vehicle.new }.to_not raise_error
  end

  it 'should always have a model year' do
    my_vehicle = Vehicle.new
    expect(my_vehicle.model_year).to eq 1995
  end

  it 'turns lights on' do
    my_vehicle = Vehicle.new
    my_vehicle.lights_on = true
    expect(my_vehicle.lights_on).to eq true
  end
end

describe Tesla do
  it 'should be a thing' do
    expect { Tesla.new }.to_not raise_error
  end

  it 'should make a new Tesla' do
    my_tesla = Tesla.new
    expect(my_tesla).to be_a Tesla
  end

  it 'should be a Car' do
    my_tesla = Tesla.new
    expect(my_tesla).to be_a Car
  end

  it 'should have a speed' do
    my_tesla = Tesla.new
    expect(my_tesla.speed).to eq 0
  end

  it 'should increase speed' do
    my_tesla = Tesla.new
    expect { my_tesla.speed_up(10) }.to change { my_tesla.speed }.from(0).to(10)
  end

  it 'should slow down to zero' do
    my_tesla = Tesla.new
    my_tesla.speed_up(70)
    expect { my_tesla.slow_down(7) }.to change { my_tesla.speed }.from(70).to(0)
  end

  it 'should make the horn go beep beep' do
    my_tesla = Tesla.new
    expect(my_tesla.horn).to eq 'beep beep'
  end
end

describe Tata do
  it 'should be a thing' do
    expect { Tata.new }.to_not raise_error
  end

  it 'should make a new Tata' do
    my_tata = Tata.new
    expect(my_tata).to be_a Tata
  end

  it 'should be a Car' do
    my_tata = Tata.new
    expect(my_tata).to be_a Car
  end

  it 'should have a speed' do
    my_tata = Tata.new
    expect(my_tata.speed).to eq 0
  end

  it 'should increase speed' do
    my_tata = Tata.new
    expect { my_tata.speed_up(2) }.to change { my_tata.speed }.from(0).to(2)
  end

  it 'should slow down to zero' do
    my_tata = Tata.new
    my_tata.speed_up(70)
    expect { my_tata.slow_down(1.25) }.to change { my_tata.speed }.from(70).to(0)
  end

  it 'should have a horn that goes toot toot' do
    my_tata = Tata.new
    expect(my_tata.horn).to eq 'toot toot'
  end
end

describe Toyota do
  it 'should be a thing' do
    expect { Toyota.new }.to_not raise_error
  end

  it 'should make a new Toyota' do
    my_toyota = Toyota.new
    expect(my_toyota).to be_a Toyota
  end

  it 'should be a Car' do
    my_toyota = Toyota.new
    expect(my_toyota).to be_a Car
  end

  it 'should have a speed' do
    my_toyota = Toyota.new
    expect(my_toyota.speed).to eq 0
  end

  it 'should increase speed' do
    my_toyota = Toyota.new
    expect { my_toyota.speed_up(7) }.to change { my_toyota.speed }.from(0).to(7)
  end

  it 'should slow down to zero' do
    my_toyota = Toyota.new
    my_toyota.speed_up(70)
    expect { my_toyota.slow_down(5) }.to change { my_toyota.speed }.from(70).to(0)
  end

  it 'should make the horn go honk honk' do
    my_toyota = Toyota.new
    expect(my_toyota.horn).to eq 'honk honk'
  end
end

describe Garage do
  it 'should be a thing' do
    expect { Garage.new }.to_not raise_error
  end

  it 'should be an array' do
    my_garage = Garage.new
    expect(my_garage.collection).to be_a Array
  end

  it 'should be able to put a car into a collection' do
    my_garage = Garage.new
    my_tesla = Tesla.new
    expect { my_garage.add_car(my_tesla) }.to change { my_garage.collection }
  end

  it 'should be able to put multiple cars into a collection' do
    my_garage = Garage.new
    expect { my_garage.park_cars }.to changle { my_garage.collection }


  end

end
