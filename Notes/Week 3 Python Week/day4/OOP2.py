
"""
Look up class variables and practice with them
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
        self.animal_kind # This is a method variable inside a class
        return "woof woof"

fido = Dog("Luis", "black")

print(fido.animal_kind)
print(fido.bark())