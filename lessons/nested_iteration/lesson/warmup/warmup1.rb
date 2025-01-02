# Part One
# Given the follow array:
animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]

# Use an enumerable to
# 1. Return an array of animals as strings.

# animals_as_strings = []

# animals.each do |animal|
#   animals_as_strings.push(animal.to_s)
# end

# p animals_as_strings


animals_as_strings = animals.map do |animal|
  animal.to_s
end

p animals_as_strings

# 2. Return an array of animals with a length >= 4.

shortened_animals = animals.filter do |animal|
  animal.length <= 4
end

p shortened_animals