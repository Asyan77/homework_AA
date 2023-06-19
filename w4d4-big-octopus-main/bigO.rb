def octupus(array)
    longest = ''
    length = 0 
    array.each_with_index do |fish1, i1|
        array.each_with_index do |fish2, i2|
            if i2 != i1 && fish1.length > fish2.length && fish1.length > length
                longest = fish1
                length = fish1.length
        end
    end
    longest
end

def octupus(array)
    array.each_with_index do |fish1, i1|
        longest = true
        array.each_with_index do |fish2, i2|
            if i2 != i1 && fish2.length > fish1.length
                longest = false
                next
        end
        if longest
            return fish1
        end
    end
end

def dominant(array)
    sizes = array.map { |fish| fish.length}
    max_length = sizes.sort[-1]
    array.each do |fish|
       return fish if fish.length == max_length
    end

def clever(array)
    longest = array[0]
    array.each do |fish|
        if fish.length > longest.length 
            longest = fish
        end
    end
    longest
end
    
def dancing(direction,array)
    array.each_with_index do |moves,i|
        return i if direction == moves
    end
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up"]

hash = {}

tiles_array.each_with_index do |moves, i|
    hash[moves] = i
end

def fast(move, hash)
    return hash[move]
end



end