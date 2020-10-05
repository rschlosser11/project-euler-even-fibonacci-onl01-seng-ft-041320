# Implement your procedural solution here!
def even_fibonacci_sum(limit);
    arr = fibonacci(limit);
    evens = find_even_nums(arr)
    evens.sum();
end

def fibonacci(limit)
    first = 1;
    second = 2;
    arr = [];
    while first < limit  
        arr << first
        first, second = second, first + second;
    end
    arr
end

def find_even_nums(arr) 
    evens = []
    arr.each {|num| num.even? ? evens << num : num} 
    evens
end