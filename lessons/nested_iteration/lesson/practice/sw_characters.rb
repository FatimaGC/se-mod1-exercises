characters = [
    {
        "name": "Luke Skywalker",
        "height": "172",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "species": [],
        "vehicles": [
            "T-47 Airspeeder",
            "Imperial Speeder Bike"
        ],
        "starships": [
            "T-65 X-Wing",
            "Lambda-class T-4A Shuttle"
        ]
    },
    {
        "name": "C-3PO",
        "height": "167",
        "gender": "n/a",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "The Phantom Menace",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "R2-D2",
        "height": "96",
        "gender": "n/a",
        "homeworld": "Naboo",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "The Phantom Menace",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "Darth Vader",
        "height": "202",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [
            "TIE Advanced x1"
        ]
    },
    {
        "name": "Leia Organa",
        "height": "150",
        "gender": "female",
        "homeworld": "Alderaan",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "vehicles": [
            "74-Z speeder bike"
        ],
        "starships": []
    },
    {
        "name": "Owen Lars",
        "height": "178",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "Beru Whitesun lars",
        "height": "165",
        "gender": "female",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": []
    },
    {
        "name": "R5-D4",
        "height": "97",
        "gender": "n/a",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "Biggs Darklighter",
        "height": "183",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope"
        ],
        "vehicles": [],
        "starships": [
            "T-65 X-wing"
        ]
    },
    {
        "name": "Obi-Wan Kenobi",
        "height": "182",
        "gender": "male",
        "homeworld": "Stewjon",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "The Phantom Menace",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [
            "Tribubble Bongo"
        ],
        "starships": [
            "Delta-7 Aethersprite-class interceptor",
            "Providence-class Carrier/destroyer",
            "J-type Naboo Star Skiff",
            "Eta-2 Actis-class Light Interceptor",
            "Belbullab-22 Starfighter"
        ]
    },
    {
        "name": "Han Solo",
        "height": "180",
        "gender": "male",
        "homeworld": "Corellia",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi"
        ],
        "vehicles": [],
        "starships": [
            "Millennium Falcon",
            "Lambda-class T-4a shuttle"
        ]
    },
    {
        "name": "Chewbacca",
        "height": "228",
        "gender": "male",
        "homeworld": "Kashyyyk",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "vehicles": [
            "All Terrain Scout Transport"
        ],
        "starships": [
            "Millennium Falcon",
            "Lambda-class T-4a shuttle"
        ]
    },
    {
        "name": "Lando Calrissian",
        "height": "177",
        "gender": "male",
        "homeworld": "Socorro",
        "films": [
            "The Empire Strikes Back",
            "Return of the Jedi"
        ],
        "vehicles": [],
        "starships": [
            "Millennium Falcon"
        ],
    }
]


# Challenge #1 

# Get a unique list of the homeworlds

# ["Tatooine", "Naboo", "Alderaan" ... ]

#Data structure: Array > Hash > homeworld key

#Iterate through the characters array

# homeworld_list = characters.map do |character|
#     character[:homeworld]
# end

#REFACTORED

homeworld_list = characters.map { |character| character[:homeworld] }.uniq

# p homeworld_list

# Challenge #2

# Get a list of the characters who have starships

# ["Luke Skywalker", "Darth Vader", "Biggs Darklighter" ... ]

# characters_w_ships_names = characters.select {|character| character[:starships].any?}
#                                      .map {|character| character[:name]}

#REFACTORED 

characters_w_ships_names = characters.filter_map {|character| character[:name] if character[:starships].any?}

# p characters_w_ships_names

# CHALLENGE #3

# Create a new hash such that each character points to their collection of starships: 

# {
#     "Luke Skywalker" => ["T-65 X-Wing", "Lambda-class T-4A Shuttle"],
#     "C-3PO" => [],
#     "R2-D2" => [],
#     "Darth Vader" => ["TIE Advanced x1"]
#     ...
#     ...
#     ...
# }

#start with an empty hash


character_starships = {}

characters.each do |character|
    character_starships[character[:name]] = character[:starships]
end

# p character_starships


# Challenge #4 

# Create a new hash such that each movie points to a collection of characters 

# {
#     "A New Hope" => ["Luke Skywalker", "C-3PO", ... ],
#     "The Empire Strikes Back" => ["Luke Skywalker", "C-3PO" ... ], 
#      ...
#      ...
#      ...
# }

#Start with an empty hash
# movie_characters = {}

#Iterate through the characters hash
    #Get a unique list of movies titles 
# movie_titles = characters.flat_map {|character| character[:films]}.uniq

    #Iterate through the movie titles and assign each movie title to the movie_characters hash as a key
# movie_titles.each {|title| movie_characters[title] = []}

# p movie_characters

#Iterate through the movie_characters hash 
    #IF the key == a character's films,
        #Iterate through the Characters array,
            #For each character, go to their films array,
                #Iterate through each film
                    #If that film == the movie_characters hash KEY, add that character's NAME to the key's value

#Do I make a new hash with the character's names and their movies?

# movie_characters.each do |key, value|
# 		characters.each do |character|
# 			character[:films].each do |film|
# 				if film == key
# 					value << character[:name]
# 				end
# 			end 
# 		end
# end


#REFACTOR
#Create the keys at the same time as the values 

movie_characters = Hash.new {|hash, key| hash[key] = []} #Creating a new hash that automatically sets the default value of each key to an empty array. 

characters.each do |character| #Iterates through the characters array, selects each character
	character[:films].each do |film| #Iterates through the characters array of films and for each film,
		movie_characters[film].push(character[:name]) #Setting the key in the movie_characters hash as the film and pushing in the character's name into the value. (Includes the check: IF the key already exists, push in the value) *Hashes always will have only unique keys
	end
end

p movie_characters
