class Potluck
    attr_reader :date,
                :dishes

    def initialize(date)
        @date = date
        @dishes = []
    end 

    def add_dish(dish)
        @dishes.push(dish)
    end

    def get_all_from_category(category)
        # same_category_dishes = []

        #Access each dish object's category 
            dishes.select do |dish|
                dish.category === category
            end 
        # same_category_dishes
    end 
end 