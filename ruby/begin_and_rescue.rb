

def sum(a,b)
  begin
    if(a==3)
      raise "i Want 2"
    end
  rescue TypeError => e
    a=a.to_i
    b=b.to_i
    retry
  rescue NoMethodError => e
    a=0
    b=0
    retry
  rescue =>e
    puts e.message
  end
  


end


puts sum(3,3)
# puts sum(3, "3")
# puts sum(nil, nil)