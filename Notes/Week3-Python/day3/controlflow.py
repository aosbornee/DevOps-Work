# What is control flow

# conditional statements and loops

weather = "sunny"
conditional_weather = "rainy"

# if weather == "snow" and conditional_weather == "rainy":
#     #if these conditions are not fulfilled, then go to the next block of code
#     print("lets go beach")
# else:
#     #therfore, the else has been printed
#     print("Sorry, it's too cold!")


#
# # Using OR operator
#
# if weather == "snow" or conditional_weather == "rainy":
#     # we used 'or' and one of these conditions were fulfilled
#     print("lets go beach")
# else:
#     print("Sorry, it's too cold!")
#
#
# # age = 21
# age = 18
# if age >= 21:
#     print("Let's go Miami")
# else:
#     print("We're not old enough :(")
#

name = input("Hi there, what's your name? ")
age = int(input("How old are you {} ? ".format(name)))

# 18, 15, 12, PG, U

# if the user is over 18 they can watch all movies
if age >= 18:
    print("You can watch all of today's movies, enjoy!")
# users between 15 and 17 can only watch the 15 movies
elif 15 <= age < 18:
    print("You can watch the 15, 12, PG and U rated movies, enjoy!")
# users between 12 and 14 can only watch the 12 rated movies
elif 12 <= age < 15:
    print("You can watch the 12, PG and U rated movies, enjoy!")
# users younger than 12 can only watch th PG and U rated movies
else:
    print("Sorry lil kid, you can only watch the PG and U rated movies, enjoy!")




