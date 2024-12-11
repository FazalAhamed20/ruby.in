def item_names(items)
  result=[]
  items.each do |item|
    p item[:quantity_by_size].size
    item.each do |key,value|
      
      if key==:name
        result.push(value)

      end

    end
    

  end
  result.sort
end

p item_names([
  {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
  {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
  {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
  {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
])