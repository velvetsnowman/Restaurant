require 'dishes.rb'

describe Dishes do
  let (:dishes) { Dishes.new }
  it 'should know its name' do
    dishes.new_item("Curry", 3)
    expect(dishes.name).to eq "Curry"
  end

  it 'should know its name' do
    dishes.new_item("Curry", 3)
    expect(dishes.price).to eq 3
  end
end
