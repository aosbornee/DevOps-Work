"""
We create classes because it allows us to group functions that carry
out similar methods.

We can
"""


class Calculator:

    def add_values(num1, num2):
        return num1 + num2

    def multiply_values(num1, num2):
        return num1 * num2

    def subtract_values(num1, num2):
        return num1 - num2

    def divide_values(num1, num2):
        return num1 / num2


print(Calculator.add_values(9, 1))


# class Calculator_user_input:
#
#     def add_values(self):
#         num1 = int(input("Please choose your first number"))
#         num2 = int(input("Please choose your second number"))
#         return num1 + num2
#
#     def multiply_values(self):
#         num1 = int(input("Please choose your first number"))
#         num2 = int(input("Please choose your second number"))
#         return num1 * num2
#
#     def subtract_values(self):
#         num1 = int(input("Please choose your first number"))
#         num2 = int(input("Please choose your second number"))
#         return num1 - num2
#
#     def divide_values(self):
#         num1 = int(input("Please choose your first number"))
#         num2 = int(input("Please choose your second number"))
#         return num1 / num2
#


