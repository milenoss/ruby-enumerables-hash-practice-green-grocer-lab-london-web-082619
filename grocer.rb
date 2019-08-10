require 'pry'
def consolidate_cart(cart)
  hash ={}
  cart.each do |item| 
   key,value = item.first
    hash[key] = value
    cart[key] << count
    binding.pry
  end
  return hash
end


def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
