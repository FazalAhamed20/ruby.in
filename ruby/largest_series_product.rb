def largest_product(num, a)
  a = a.split("")  
  largest = 0

  
  (0..a.length).each do |index|
    product = 1
    
    (index...(index + num)).each do |i|
      product *= a[i].to_i
    end
    
    
    largest = [largest, product].max
  end
  
  largest
end


a = "0123456789"
p largest_product(2, a)  
