class Hello
  @@count=0
  def initialize(name,age)
    @name=name
    @age=age
     @count1+=1
     @@count+=1

  end

  def hai
p @@count
p @count

  end



end

hello=Hello.new("fazal",23,0)

hello.hai
hello=Hello.new("fazal",23,0)

hello.hai