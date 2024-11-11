class Unicorn
    attr_reader :name

    attr_accessor :color

    def initialize(name, color = 'silver')
        @name = name
        @color = color
    end 

    def silver?
        @color == 'silver'
    end

    def say(saying)
        "**;* #{saying} **;*"
    end 
end 