require 'pry'
def consolidate_cart(cart)
  new_cart = {}
  cart.each do |item_hash| 
  item.each do |item,attribute_hash|
   if  new_cart ||= item
     new_cart[item][:count] ? new_cart[item][:count] += 1 :
     new_cart[item][:count] = 1 
     binding.pry
      end
    end
  end
 end
 
    