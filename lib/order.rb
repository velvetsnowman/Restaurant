require_relative 'confirmation.rb'

class Order
  def initialize(menu, confirmation = Confirmation)
    @confirmation = confirmation
    @bill = []
    @food = []
    @total = 0
    @menu = menu
    create_order
  end

  def create_order
    i = 1
    @menu.each do |dish|
      puts "-----------------------------"
      puts "#{i}: #{dish[:name]} - #{dish[:price]}"
      i += 1
    end
    questions
    add_to_cart_handler
  end

  def questions
    loop do
      puts 'write the number of the dish you want'
      puts "0 to quit"
      dish = gets.chomp
      if dish == "0"
        break
      end
      puts 'write the quantity of the dish you want'
      @food << [dish.to_i - 1, gets.chomp.to_i]
    end
  end

  def add_to_cart_handler
    @food.each do |set|
      dish_cost = set[1] * @menu[set[0.to_i]][:price]
      @bill << ["#{set[1]} #{@menu[set[0.to_i]][:name]} for £#{dish_cost}"]
      @total += dish_cost.to_i
    end
    validate_bill
  end

  def validate_bill
    @bill.each do |item|
      puts item
    end
    puts "For a total of #{@total}"
    puts "is that correct? [y/n]"
    answer = gets.chomp.capitalize
    if answer == 'Y'
      @confirmation.new(@total)
    else answer == "N"
      puts "We apologize for the inconvenience, our mathmeticians will look into it"
      exit
    end
  end

end
