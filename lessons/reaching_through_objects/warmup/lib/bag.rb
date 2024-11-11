class Bag
    def initialize()
        @candies = []
    end 

    def empty?
        if @candies.length >= 1
            false
        else 
            true
        end 
    end

    def count 
        @candies.length
    end 

    def candies
        @candies
    end 

    def add_candy(candy)
        @candies.push(candy)
    end 

    def contains?(candy_type)
        @candies.any? {|candy| candy.type == candy_type}
    end 
end