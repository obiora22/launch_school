require 'pry'
class Car
  attr_accessor :brand, :model

  def initialize(new_car)
    brand = new_car.split(' ').first
    model = new_car.split(' ').last
    binding.pry
  end

end

c = Car.new "Ford Mustang"
c.model 
