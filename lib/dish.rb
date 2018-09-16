require_relative 'menu.rb'

class Dish
  attr_reader

  def self.create_new_dish(name, price)
    return {name: name, price: price}
  end


end
