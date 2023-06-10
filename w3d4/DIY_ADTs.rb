class Stack 
    def initialize(array)
        @array = array

    end

    def push(el)
        @array << el 
    end

    def pop
        @array[0...-1]
    end

    def peek
        @array[-1]
    end

    def empty?
        @array.empty?
    end
end


pancakes = Stack.new([5,6,7,9])
