class SimulatorController < ApplicationController
  # Create new Car object and save it
  # to cookies hash in string form
  def run
    # Create new Car object
    @new_car = Car.new(params[:make], params[:model], params[:year])
    # Save  string form of new object
    cookies[:new_car] = @new_car.to_yaml
  end

  def accelerate
    @car = YAML.load(cookies[:new_car])
    @car.accelerate
    cookies[:new_car] = @car.to_yaml
    render 'run.html.erb'
  end

  def brake
    @car = YAML.load(cookies[:new_car])
    @car.brake
    cookies[:new_car] = @car.to_yaml
    render 'run.html.erb'
  end

  def toggle_parking_brake
    @car = YAML.load(cookies[:new_car])
    @car.toggle_parking_brake
    cookies[:new_car] = @car.to_yaml
    render 'run.html.erb'
  end
end
