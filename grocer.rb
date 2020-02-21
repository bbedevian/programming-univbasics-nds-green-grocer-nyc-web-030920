def find_item_by_name_in_collection(name, collection)
  i = 0 
  while i < collection.length do 
  if name == collection[i][:item] 
   return collection[i]
  end 
  i+=1 
  end 
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  con_cart = []
  i = 0 #cart counter
  while i < cart.length do 
    x = 0 #con_cart counter
    while x < con_cart.length do 
      if cart[i][:item] == con_cart[x][:item]
      con_cart[x][:counter] +=1
      else 
      con_cart << cart[i]
      end 
    x+=1
    end 
    i+=1 
  end 
  con_cart 
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
