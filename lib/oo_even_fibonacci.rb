# Implement your object-oriented solution here!
class EvenFibonacci
    attr_accessor :limit

    def initialize(limit)
        @limit = limit
    end

    def fibonacci 
        first = 1;
        second = 2;
        arr = [];
        while first < @limit  
            arr << first
            first, second = second, first + second;
        end
        arr
    end

    def get_evens
        evens = [];
        self.fibonacci.each {|num| num.even? ? evens << num : num}
        evens
    end

    def sum
        self.get_evens.sum();
    end
end