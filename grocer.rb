def consolidate_cart(cart)
    new_hash = {}
  cart.each do |item|
    if new_hash[item.keys[0]]
      new_hash[item.keys[0]][:count] += 1
    else
      new_hash[item.keys[0]] = {
        count: 1,
        price: item.values[0][:price],
        clearance: item.values[0][:clearance]
      }
    end
  end
end
