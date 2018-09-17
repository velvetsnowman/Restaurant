require_relative 'dish'
require_relative 'order'
require_relative 'confirmation.rb'

class Menu

  attr_reader :menu_items

  def initialize( dish = Dish, order = Order )
    @dish = dish
    @order = order
    @menu_items = [
      {:name=>"chicken", :price=>3},
      {:name=>"lamb", :price=>3.4}
      {:name=>"beef", :price=>3.34}
      {:name=>"vegetarian", :price=>23.7}
      {:name=>"vegan", :price=>1.80}
      {:name=>"gluten free", :price=>4.5}
    ]
  end

  def order
    @order.new(@menu_items)
  end

  def add_to_menu(name, price)
    @menu_items << @dish.create_new_dish(name, price)
  end

end
