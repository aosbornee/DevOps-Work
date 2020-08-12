
class Calculator:
    def __init__(self, add, subtract, divide, multiply):
        self.add = add
        self.subtract = subtract
        self.divide = divide
        self.multiply = multiply

    def add(self, num1, num2):
        return num1 + num2

    def subtract(self, num1, num2):
        return num1 - num2

    def divide(self, num1, num2):
        return num1 / num2

    def multiply(self, num1, num2):
        return num1 * num2


obj = Calculator(15, 12, 5, 78)


