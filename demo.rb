




def consolidate_cart(cart)
    new_cart =[]
    index = 0
    while index < cart.length 
    #item variable checks if new_cart has the item, if yes, accumulate it, if not, count it once.
    #this method is to check if the item is existing in an array, and returns the item information
    item = find_item_by_name_in_collection(cart[index][:item], new_cart)
    # "if item" means if the item exists in the new_cart array, loop through the new cart array to see if what item is identical to it
    # then add 1 to its count key if not, count to once and shovel it to the new_cart array
    if item
      new_cart_index=0
      while new_cart_index < new_cart.length do
        if new_cart[new_cart_index][:item] === item[:item]
          new_cart[new_cart_index][:count]+=1
        end
        new_cart_index+=1
        end
    else
        cart[index][:count]=1
        new_cart << cart[index]
      end
      index+=1
    end
    new_cart
    end