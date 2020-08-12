"""
What is a function?

A function is a block of organized,
reusable code that is used to perform a single, related action.

beneficial as it allows us to effectively reuse code and keep it DRY
Built in functions include 'type, print, str, list etc'

keyword 'def' allows us to create a function
"""


def hello_world():
    # this will leave the function with the current value specified
    return "hello world"
    # pass allows us to skip over, do nothing
    pass

# pass is helpful in creating/building unit test
# we can define our methods without having to finish them, reverse engineering

# without printing the function, the code will run but nothing would be
# shown on the terminal


hello_world()


def test():
    return "That test went great,"


# Here we have
concat = test() + " " + "can't wait for the next one"
print(concat)


# def multiply_values(x, y):
#     return x * y
#
#
# print(multiply_values(12, 7))

"""
Functions with arguments 
"""


def add_values(x, y):
    # the function will ret
    return x + y
    # This won't work this part of the code is unreachable
    # The function has already ended after the first return statement
    return x - y


# print(add_values(54, 46))
# print(add_values("hello", "world"))


# create a function with two args to return a subtraction of the 2 values given
def subtract(x, y):
    return x - y


# create a function with two args to return a division of the 2 values given
def divide(x, y):
    return x / y
# create a function with two args to return a remainder of  of the 2 values given


def remainder(x, y):
    return x % y
# create a function with two args to return a * of the 2 values given


def multiply(x, y):
    return x * y
# create a function with two args to return the int a of the two values given


def int_value(x, y):
    return x // y


# prompt the user to enter two numbers and pass those as an argument into our method

# def user_experience(x, y):
#     x = int(input("Please choose a number: "))
#     y = int(input("Please choose a second number: "))
#     if x or y > 50:
#         print("wooh, that number's abit to large for me, try something under 50")
#     else:
#         return x * y
#
#
# print(user_experience(15, 10))
#

def user_multiply(x, y):
    x = int(input("Please choose a number: "))
    y = int(input("Please choose a second number: "))
    print("Your results were: ")
    return x * y


print(user_multiply(15, 21))
