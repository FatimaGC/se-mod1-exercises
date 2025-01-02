# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings
flat_animals = nested_animals.flat_map {|animals| animals.map(&:to_s)}

p flat_animals

# 2. Return an unnested array of animals with length >= 4
short_name_animals = nested_animals.flat_map {|animals| animals.filter do |animal| animal.length <= 4 end}

p short_name_animals

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }

#Start with an empty hash

animals_hash = {}

#Flatten the nested array (The elements are already symbols so we can leave them as is).
#Add each element to the animals_hash as the key.
#Assign the length of each key as the value of that key.

nested_animals.flat_map {|animals| animals.map do |animal| animals_hash[animal] = animal.length end} 

p animals_hash

