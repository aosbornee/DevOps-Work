"""
display the board
flip player turn
handle the player turn


"""

board = ["-", "-", "-",
         "-", "-", "-",
         "-", "-", "-"]


# when called, this function will return the tictactoe board
def display_board():
    print(board[0], board[1], board[2])
    print(board[3], board[4], board[5])
    print(board[6], board[7], board[8])

# Now I need to create a user input for the user to pick something


def handle_turn():
    position = int(input("Please choose a position from 1-9: "))
    position -= 1
    board[position] = "X"


def flip_player():
    pass
display_board()

handle_turn()

display_board()