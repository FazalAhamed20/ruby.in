# class Darts
# attr_reader :x, :y

#   def initialize(x,y)
#     @x=x
#     @y=y

#   end
#   def calculate_radius
#     Math.sqrt(x**2 + y**2)
#   end



# end

# p Darts.new(-5, 0).calculate_radius



inputs = {
  :zio => 10,
  :dog => 10,
  :ice => 20,
  :mist => 50,
  :number => 8,
}





def sorting(input)
  
  result= input.sort_by {|key,value| value}
  n=result.length

   (0..n-2).each do |index| 
    
    if (result[index][1])==(result[index+1][1])
      p result[index][0],result[index+1][0].to_s
      if result[index][0].to_s > result[index+1][0].to_s
       temp = result[index]
       result[index] = result[index+1]
       result[index+1] = temp
      end

    end
   
    

   end

 
   p result
 

end

sorting(inputs)