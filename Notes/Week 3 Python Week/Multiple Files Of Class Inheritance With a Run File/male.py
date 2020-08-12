from human import Human

import random
# here i wanna import randint and if they win they get some money and wealth = "millionaire

"""
The next stage for me would be to start using input.
Adding an underscore to a method or a variable would stop
it from being inherited to the child...
"""


class Male(Human):
    def __init__(self, colour, mood, hungry, sleepy, hairy, lactate, strength_lvl, intelligence_lvl, can_labour, wealth):
        super().__init__(colour, mood, hungry, sleepy, hairy, lactate, strength_lvl, intelligence_lvl)
        self.can_labour = can_labour
        self.wealth = wealth

    def gambling(self):
        lucky_number = random.randint(1, 10)
        while True:
            try:
                pick_number = int(input("Choose your lucky raffle number between 1 and 10!!!!: "))

                if pick_number == lucky_number:
                    self.wealth = "Millionaire"
                    print("OMG YOU'RE A MILLIONAIREE, NO MORE FREE MEALS!!!!")
                    print("You are now a {}".format(self.wealth))
                else:
                    print("Damn... you're no good at this")
            except ValueError:
                print("Invalid integer. The number must be in the range of 1-10.")




Andrew = Male("Black", "Happy", False, True, "shaven", False,
               0, 0, False, "Free school meals")

#
# Andrew.gambling()
#
# Andrew.eat()
# Andrew.study()
# Andrew.exercise()
#
# print(Andrew.strength)
# print(Andrew.intelligence)
#
#
