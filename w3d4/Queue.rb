class Queue

    def initialize(array)
        @array = array
    end

    def enqueue(el)
        @array.unshift(el)
    end

    def dequeue
        @array.pop
    end

    def peek
        @array[0]
    end


end