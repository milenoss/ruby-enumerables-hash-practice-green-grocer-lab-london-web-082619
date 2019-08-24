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
 
 def apply_coupons(cart,coupons)   
   coupons.each do |coupon|
     coupon.each do |attribute, value| 
       name = coupon[:item]
       if cart[name] && cart[name][:count] >= coupon[:num]
         if cart["#{name} W/COUPON"]
           cart["#{name} W/COUPON"][:count] += 1 
         elsecart["#{name} W/COUPON "] = {:price => coupon[:cost],
           :clearance => cart[name][:clearance], :count => 1}
         end
         cart[name][:count] -= coupon[:num]
       end
     end 
   end
   cart
 end
 
 def apply_clearance(cart)
   cart.each do |item, attribute_hash|
     if attribute_hash[:clearance] == true
       atrribute_hash[:price] = (atrribute_hash[:price] * 0.8.round(2))
     end
   end
   cart
 end
 
 total = 0 
 new_cart = consolidate_cart(cart)
 coupon_cart = apply_coupons(new_cart, coupons)
 clearance_cart = apply_clearance(coupon_cart)
 
clearance_cart.each do |item, attribute_hash|
  total += (attribute_hash[:price] * attribute_hash[:count])
end
total = (total *0.9) if total > 100 

 
 
 
   