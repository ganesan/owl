local owl = require "owl"

local Dog = owl.class{ name="Dog", image="dog.png", width=100, height=100 }

-- private data that needs to be accessed by this class and sub-classes
Dog.private.age_multiplier = 7

-- public properties
Dog.name = "Unnamed Dog"
Dog.age = 5	-- in human years

-- constructor
function Dog:init( params )
	print( "Instance of " .. self.class_name .. " created." )
end

-- public methods
function Dog:age_in_dog_years()
	return self.age * Dog.private.ageMultiplier
end

return Dog