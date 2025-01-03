cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}


# Problem #1: 
# Get a unique list of all of the cities that these humans have lived in  
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]

#Iterate through the hash
#Get the array for each key
#Return all cities in a single array

all_cities = cities_lived_in.flat_map do |key, value|
    value
end

p all_cities

# Problem #2: 
# Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# names of the humans who've lived in Philadelphia.

# [:michaela, :mike, :alex]
# or
# ["Michaela", "Mike", "Alex"]

philadelphia_inhabitants = cities_lived_in.select {|key, value| value.include?("Philadelphia")}.keys

p philadelphia_inhabitants

# Problem #3: 
# Create a hash that has the city as a key, and the number of people that live in it as it's value: 

# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }

#Start with an empty hash names "cities"
#Iterate through the hash
#In each array, check whether each city is already in the cities hash
    #If the city is NOT in the hash, add it to the hash as a new key
    #If the city is already in the hash, + 1 to that city's value 

cities = {}

cities_lived_in.each do |key, value|
    value.each do |city| 
        if !cities.has_key?(city)
            cities[city] = 1
        else 
            cities[city] += 1
        end
    end
end


p cities