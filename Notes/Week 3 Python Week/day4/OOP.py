"""
4 pillars of OOP
-> Inheritance
-> Encapsulation
-> Abstraction
-> Polymorphism
"""


class Dog:

    # This is a class variable
    animal_kind = "canine"
    # init is a constructor, it allows us to initialize the attributes in our class
    # Self represents the instance of the class

    def __init__(self, name, colour):
        self.name = name
        self.colour = colour

    def bark(self):
        return "woof woof"

    def sleep(self):
        return "zzzzz!!"

    def run(self):
        return "I wanna go park"

    def eat(self):
        return "nom nom nom"


"""
Create methods inside the above block of code
for sleeping, breathing and running, eating
"""

# Making a subclass for PetDogs that takes two additional attributes, price and breed
# As it is a subclass, it inherits all the functionality from the parent 'Dog' class
# Subclasses are good as we can add further functionality that is already in the parent class


class PetDog(Dog):
    # init is initialising all the attributes we will be using in this subclass
    def __init__(self, name, colour, breed, traits):
        # Super() refers to all the attributes in the parent class that we want to inherit
        super().__init__(name, colour)
        self.breed = breed
        self.traits = traits



# Creating an object of the class and assigning all the attributes

dog1 = Dog("Luis", "brown")

print(dog1.name)
# We are printing the value that is returned from the eat method in the dog class
print(dog1.eat())

# Creating an object of the subclass, and assigning all the attributs
pet_dog1 = PetDog("Mars", "Black", "Black Labrador", "Energetic")

# We are printing the value of the bark method in the dog class, we can use it in the petdog
# class because we have inherited from it
print(pet_dog1.bark())


print(pet_dog1.traits)


