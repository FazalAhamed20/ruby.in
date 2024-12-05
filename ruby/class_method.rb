class Fruits

    attr_reader :name, :rate

    def initialize(name,rate)
        @name=name
        @rate=rate
    end

    class << self
        def banana
            self.new("banana",1000)

        end
        def apple
            self.new("apple",1000)

        end


    end



end

banana=Fruits.banana
p banana.name