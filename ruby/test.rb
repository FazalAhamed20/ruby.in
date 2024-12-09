class Series
  def initialize(str)
    @str=str

  end
  def largest_product(num)
    raise ArgumentError, "Cannot find for negative" if num.negative?
    largest=0
    count=0
    result=1
    str=@str.split("")
    (0..str.length).each do |index|
      normal_index=index
      while(count<=num)
        result*=str[index].to_i
        count=count+1
        index=index+1

      end
      count=0
      index=normal_index
    end
    return result

  end

  series= Series.new("29")
  p series.largest_product(2)