import random

choice = ["rock","paper","scissors"]

computer = random.choice(choice)
print("Welcome to rockpaperscissors")
player = str(input("please choose: ")).lower()
print("computer chose :{}".format(computer))

if player == computer:
    print("its a draw")
elif player == "rock" and computer == "paper":
    print("player loses")
elif player == "rock" and computer == "scissors":
    print("player wins")
elif player == "scissors" and computer == "paper":
    print("player wins")
elif player == "scissors" and computer == "rock":
    print("player loses")
elif player == "paper" and computer == "rock":
    print("player wins")
elif player == "paper" and computer == "scissors":
    print("player loses")
else:
    pass
