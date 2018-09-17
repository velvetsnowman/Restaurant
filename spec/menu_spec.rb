require 'menu'
require 'dish'
require 'order'
require 'confirmation.rb'

describe Menu do
  let (:dish) { Dish.new }
  let (:menu) { Menu.new }

  it 'should let an owner add a dish to the menu' do
    menu.add_to_menu("lamb", 3)
    expect(menu.menu_items.length).to eq 1
  end

  it "should let a user order" do
    
  end
end
