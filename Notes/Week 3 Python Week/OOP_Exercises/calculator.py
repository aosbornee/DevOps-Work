import operators


class Calculator:

    def equation(self):
        num1 = int(input("Choose your first number: "))
        num2 = int(input("Choose your second number: "))
        operator = input("Please choose out of the following options: ")

        if operator == "*":
            answer = operators.multiplication(num1, num2)
            print("The answer is: {}".format(answer))

        elif operator == "/":
            answer = operators.division(num1, num2)
            print("The answer is: {}".format(answer))

        elif operator == "+":
            answer = operators.addition(num1, num2)
            print("The answer is: {}".format(answer))

        elif operator == "-":
            answer = operators.substraction(num1, num2)
            print("The answer is: {}".format(answer))

        elif operator == "%":
            answer = operators.modulus(num1, num2)
            print("Is your first number divisible by your second: {}".format(answer))

        elif operator == "triangle":
            answer = operators.area_of_triangle(num1, num2)
            print("The area of the triangle is: {}".format(answer))

        # elif operator == "convert":
        #     answer = operators.inch_to_cm(num)
        #     print("{} in inches is {} in centimetres".format(num))
        #
        # return answer


e1 = Calculator()

(e1.equation())

