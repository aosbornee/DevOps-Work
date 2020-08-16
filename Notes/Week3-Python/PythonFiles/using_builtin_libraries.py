
# # Math and Random are builtin modules
# import math
# from random import random
#
# num = 24.8
#
# # Rounds the number up
# print(math.ceil(num))
# # Rounds the number down
# print(math.floor(num))
# # Returns a random number
# print(random())


# Calculating inches to Centimetres

def inches_to_cm():
    inches = int(input("What is the length of the object in inches?: "))
    print("In centimetres, your object is:")
    return inches * 2.54


print(inches_to_cm())

