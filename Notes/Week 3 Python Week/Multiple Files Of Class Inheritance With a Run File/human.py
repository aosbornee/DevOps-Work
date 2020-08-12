from mammal import Mammal
import random
from threading import Timer


class Human(Mammal):

    def __init__(self, colour, mood, hungry, sleepy, hairy, lactate, strength_lvl, intelligence_lvl):
        super().__init__(colour, mood, hungry, sleepy, hairy, lactate)
        self.strength = 0
        self.intelligence = 0

    def study(self):
        self.intelligence = 0
        num_1 = random.randint(1, 10)
        num_2 = random.randint(1, 10)
        answer = num_1 * num_2
        guess = int(input("What is {} * {}: ".format(num_1, num_2)))
        if guess == answer:
            self.intelligence += 1
            print("Correct!")
        elif guess != answer:
            print("I need to spend more time in the library...")
        print("Intelligence level is now --> {}".format(self.intelligence))

    def exercise(self):
        time_given = 8
        t = Timer(time_given, print, ['Sorry, times up'])
        t.start()
        condition = input("Press Z as fast as you can....")
        if len(condition) > 20:
            t.cancel()
            self.strength += 1
            print("Strength level is now --> {}".format(self.strength))



person =Human("Black", "Happy", False, True, "shaven", False,
               "Average body shape", 0)

# print(human.sleepy)
# human.sleep()
#
# print(human.sleepy)

