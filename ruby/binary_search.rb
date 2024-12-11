class BinarySearch

  def initialize(arr)
    @arr=arr

  end
  def search_for(target)
    left=0
    right=@arr.length-1
    while(left<=right)
      middle=((left+right)/2).floor
      if(@arr[middle]==target)
        return middle

      end
      if(target<@arr[middle])
        right=middle-1

      else
        left=middle+1

      end

    end


  end


end

binary = BinarySearch.new([1,2,4,6,8])
p binary.search_for(6)