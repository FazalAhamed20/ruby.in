


class Employee


    attr_reader :name, :occupation, :age, :place


    def initialize(details)

        @name=details[:name]
        @occupation=details[:occupation]
        @age=details[:age]
        @place=details[:place]


    end



end

employee=Employee.new({
    name:"fazal",
    place:"gudalur",
    age:"23",
    occupation:"developer"
})

p employee.name