class MyQueue

    def initialize(array)
        array = array
        #insead of using an array you can use 2 stacks
    end

    def enqueue(el)
        array.unshift(el)
    end

    def dequeue # not ideal because results in complete reidexing of the array
        array.pop
    end

    def peek
       print array
    #    array.dup
    end

    def size
        array.length
    end

    def empty?
        array.empty?
    end



end





private
attr_reader :array # this is a helper method to have access to array do you don't need to use the @ symbol when calling it in this class 