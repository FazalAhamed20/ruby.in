class Employee

    def initialize(name,age)
        @name=name
        @age=age


    end

    def introduce
   puts "Hi, my name is #{@name} and my age is #{@age}"

    end

end

employee=Employee.new("fazal",34)
employee.introduce

class Manager < Employee

end


class Worker < Employee

end

manager=Manager.new("vivek",34)

manager.introduce

p Worker < Employee