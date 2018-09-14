require 'dishes.rb'

describe Dish do
  let (:dish) { Dish.new }
  it 'should know its name' do
    dish.new_item("Curry", 3)
    expect(dish.name).to eq "Curry"
  end

  it 'should know its name' do
    dish.new_item("Curry", 3)
    expect(dish.price).to eq 3
  end
end
