

class Employee

    attr_reader :name
    attr_accessor :age

    def initialize(name,age)

        @name=name

        @age=age

    end

    def introduce
       puts "Hello this is #{name} and my age is #{age}"
    end

end


class Worker < Employee
    def yel 
       puts "hey i am the worker here"

    end

end

class Manager < Employee

    def yel

        puts "hey i am the manager here"
    end

    def introduce
        puts "myself #{name} and i am the manager here"

    end

end

employee=Employee.new("fazal",24)
manager=Manager.new("vivek",43)
worker=Worker.new("varun",78)

manager.yel
manager.introduce
worker.yel
manager.introduce

