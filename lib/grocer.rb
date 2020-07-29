require 'pry'
# def find_item_by_name_in_collection(name, collection)
#   index = 0

#   while index < collection.length do
#     return collection[index] if collection[index][:item] === name 
#     index += 1
#   end
# end

#rspec spec/grocer_spec.rb -e find_item_by_name_in_collection
def find_item_by_name_in_collection(name, collection)
  collection.each{|items|
  if items[:item] === name
    return items 
  end}
  nil
end



#   # Consult README for inputs and outputs
#   #
#   # REMEMBER: This returns a new Array that represents the cart. Don't merely
#   # change `cart` (i.e. mutate) it. It's easier to return a new thing.


# brain storming
# this method returns a new array that represents the cart
#  thinking define a new_array to contain the hash
# use each to loop through to find the deplicate items, and accumulating them
#the if condition will be 
#rspec spec/grocer_spec.rb -e consolidate_cart
def consolidate_cart(cart)
index = 0
new_cart = []

while index < cart.length do
  item = find_item_by_name_in_collection(cart[index][:item],new_cart)
  if item
    new_cart_index = 0
    while new_cart_index < new_cart.length do
      if new_cart[new_cart_index][:item]===item[:item]
        new_cart[new_cart_index][:count]+=1
      end
      new_cart_index+=1
    end
  else 
    cart[index][:count] = 1
    new_cart << cart[index]
  end
  index+=1
end
new_cart
end
