name = input("Hi there, what's your name? ")
age = int(input("How old are you {} ? ".format(name)))

# 18, 15, 12, PG, U
if age >= 18:
    print("You can watch all of today's movies, enjoy!")
elif 15 <= age < 18:
    print("You can watch the 15, 12, PG and U rated movies, enjoy!")
elif 12 <= age < 15:
    print("You can watch the 12, PG and U rated movies, enjoy!")
else:
    print("Sorry lil kid, you can only watch the PG and U rated movies, enjoy!")