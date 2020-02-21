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
  while i < cart.length 
  new_item = find_item_by_name_in_collection(cart[i][:item], con_cart)
  if new_item
    new_item[:count] += 1 
  else 
    new_item = {
      :item => cart[i][:item],
      :price => cart[i][:price],
      :clearance => cart[i][:clearance],
      :count => 1 
    }
    con_cart << new_item
  end 
  i+=1 
  end 
  con_cart 
end

def apply_coupons(cart, coupons)
i = 0 
while i < coupons.length 
item_check = find_item_by_name_in_collection(coupons[i][:item], cart)
couponed_item = "#{coupons[i][:item]} W/COUPON"
cart_item_w_coupon = find_item_by_name_in_collection(coupon_item, cart)
  if item_check && item_check[:count] >= coupons[i][:num]
    if cart_item_w_coupon
      cart_item_w_coupon[:count] += 
    end 
    
  end 
i+=1 
end 
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
