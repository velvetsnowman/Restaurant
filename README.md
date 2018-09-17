Restaurant - TakeAway
==================
```
                            _________
              r==           |       |
           _  //            |  M.A. |   ))))
          |_)//(''''':      |       |
            //  \_____:_____.-------D     )))))
           //   | ===  |   /        \
       .:'//.   \ \=|   \ /  .:'':./    )))))
      :' // ':   \ \ ''..'--:'-.. ':
      '. '' .'    \:.....:--'.-'' .'
       ':..:'                ':..:'

```
To play around with my code follow these instructions:

* In your terminal in the directory you wish run

```
* git clone https://github.com/velvetsnowman/Restaurant.git
* cd Restaurant
```
```
* irb
* require './lib/menu.rb'
* my_resto = Menu.new
```
* If you wish to add some of your own dishes: 
```
* my_resto.add_to_menu("your dish name", price)

```
* To order from the menu:
```
* my_resto.order
```
* Follow the instructions and order!


**NOTES**

Within this commandline APP I use the Twilio Gem to send text messages when the order is confirmed. If you wish, insert your number into Restaurant/lib/confirmation.rb, line 17, for a full user experience!

```
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes

As a customer
So that I can verify that my order is correct
I would like to check that the total I have been given matches the sum of the various dishes in my order

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered
```
