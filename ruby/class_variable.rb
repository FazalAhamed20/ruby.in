class Bicycle

    @@count=0

    def count
      p @@count

    end

    def self.count

        p @@count


    end

    def initialize
    @@count+=1

    end



end

b1=Bicycle.new
b1.count

Bicycle.count

