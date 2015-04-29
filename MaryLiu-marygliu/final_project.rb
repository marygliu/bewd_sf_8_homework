@Bryan / @David: Please let me know if I should go with Option A or B.

Final project Option B:

##### APP DESCRIPTION ######

#Coffee shop's order-ahead app that allows users to order and pay
#for drinks 15-30 minutes in advance.
#Includes checkout flow (Stripe integration).


##### USER STORIES ######

# As a guest, I can see a list of drinks several coffee shops

# As a guest, I can search by drink name to see which coffee shop has the drink

# As a guest, I can click and view a specific coffee shop's menu (drink's name, price, and image)

# As a logged-in buyer, I can buy the item in the detailed view
	#spec: has only one size
  #spec: V1.0 can only buy one item at a time
	#spec: Using Stripe APIs: https://stripe.com/docs/checkout/guides/rails

#I can specify a pick-up time between 15 and 30 minutes.


##### SCHEMA ######

#Shops: has_one menu
# => name
# => location

#Menu: has many drinks

#Drink: 
# => image
# => price
# => description