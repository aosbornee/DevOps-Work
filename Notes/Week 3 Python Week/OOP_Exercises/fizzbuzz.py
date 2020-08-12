"""
The Problem

"Write a program that prints the numbers from 1 to 100.
But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”.
For numbers which are multiples of both three and five print “FizzBuzz”."

NOTE -> Must be in class and method format
"""

"""
im going to do a for loop for the range of 1, 100,
if n modulus 3 gives 0, return "Fizz"
if n modulus 5 gives 0, return "Buzz"
if n modulus 3 and 5 equals 0, return "FizzBuzz"
"""



class Fizz_buzz:

    def fizzbuzz(self):
        for n in range(1, 100):
            print(n)
            if n % 3 == 0:
                print("Fizz")
            elif n % 5 == 0:
                print("Buzz")
            elif n % 3 and n % 5 == 0:
                print("FizzBuzz")


game1 = Fizz_buzz()


game1.fizzbuzz()