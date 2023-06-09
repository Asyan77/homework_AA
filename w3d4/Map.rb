class Map
    def initialize(2Darray)
        @array = 2Darray
        @hash = Hash.new { |h,k| h[k]}

        @array.each do |sub_arr|
            @hash[sub_arr[0]] = sub_arr[1] if @hash[sub_arr[0]] == nil 
        end

    end

    def set(key, value)
        @hash[key] = value
    end

    def get(key)
        
    end

    def delete(key)

    end

    def show
        puts @hash
    end



  

  
end