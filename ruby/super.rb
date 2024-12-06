class Employee
  attr_reader :name, :age

  def initialize(name,age)
    @name=name
    @age=age


  end

  def introduce
    puts "Hello my name is #{@name} and age is #{@age}"

  end
end

class Manager < Employee
  attr_reader :rank

  def initialize(name,age,rank)
    super(name,age)
    @rank=rank


  end
  def introduce
    result=super
    puts "#{result} hey i am a #{rank}"

  end

end

employee=Employee.new("fazal",200)
manager=Manager.new("vivek",23,'senior manager')

employee.introduce
manager.introduce
p manager.age
p manager.name