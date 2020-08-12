from animal import Animal


class Mammal(Animal):
    def __init__(self, colour, mood, hungry, sleepy, hairy, lactate):
        super().__init__(colour, mood, hungry, sleepy)
        self.hairy = hairy
        self.lactate = lactate

    def hibernate(self):
        self.mood = "Happy"

    def hunt(self):
        self.mood = "Tired"
        self.hungry = "Full"



# Andrew.sleep()

# print(Andrew.sleepy)
#
# print(Andrew.hunger)
# Andrew.eat()
# print(Andrew.hunger)



# print(Andrew.mood)
# Andrew.exercise()
#
# print(Andrew.mood)