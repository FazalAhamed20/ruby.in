class School
  attr_reader :students

  def initialize
    @students={}
    

  end
  def add(key,value)

    if @students[key.to_sym]
      if @students[key.to_sym]==value
        return false
      end
    end
    @students[key.to_sym]=value
    return true

  end

  def roster
    result=[]
    @students= @students.sort_by { |key, value| p value }
    @students.each do |key,value|
      result.push(key.to_s)

    end
    result

  end


end

school = School.new
school.add("Jim", 3)
school.add("Peter", 2)
school.add("Anna", 1)
p school.roster
