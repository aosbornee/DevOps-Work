class Animal:
    def __init__(self, colour, mood, hungry, sleepy):
        self.colour = colour
        self.mood = mood
        self.hungry = True
        self.sleepy = True

    def eat(self):
        self.hungry = False
        print("I am no longer Hungry :) ")

    def sleep(self):
        self.sleepy = False
        print("Got my beauty sleep!!")

    def procreate(self):
        print("ooh another Kid")

    def create_being(self):
        input("What would you like to call your being?: ")


