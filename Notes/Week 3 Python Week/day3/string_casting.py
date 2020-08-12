x = 10
y = 11
x = y

# print(x > y) # we have made x equal to y, so this statement would print false
# print(x == y) # We made x equal to y so this would output as true

#Note True and False are boolean values

# print('Andrew's class is eng 67')
# print("Andrew's class is eng 67")
#
"""
Using single quotes has given us an error as the apostrophe
was acting as a quotation mark.

We could still use single quotation marks but we would have to use
a backslash to cancel out the quotation
"""
# print('Andrew\'s class is eng 67')

greetings_welcome = "Hello world"

# H E L L O  W O R L D
# 0 1 2 3 4  6 7 8 9 10

# print(greetings_welcome[:7])
#this will return the characters from index 0 to 6

# print(len(greetings_welcome))
#this would return 11 as there 11 characters in the string

# welcoming_user = input("Hi {}, welcome aboard!".format(greetings_welcome))

hi = "hello world"

"""
Using string slicing to print part of the string
Note that if we want to return up to index 4, we slice to 5
as python does not include the last index in the call
"""
# print(hi[:5]) would return 'hello'
# print(hi[6:]) would return 'world'

# print(hi[-6:])

#using strip function
"""
many spaces has been added to the end of the string 
but strip has removed them
"""
remove_empty_space = "remove the empty space    "
print(len(remove_empty_space))

test = "hello mars"

#adding two colons follwed by -1 flips the string
print(test[::-1])

use_text = "here's SOME text with lot's of text"

"""
count() counts how many times a word within the string appears
below it will print 2 as text appears twice in the variable
"""
print(use_text.count("text"))

"""
lower() brings everything to lowercase
upper() brings everything to uppercase
"""
print(use_text.upper())
print(use_text.lower())

#capitalize() works by capitalising the first letter of a sentence
#This has good real world application and we may me using alot
print(use_text.capitalize())

"""
Replacing text within a string using 'replace()
Here we have replaced 'SOME' with 'alot in the text
"""
print(use_text.replace("SOME", "alot of"))

"""
Here we could ask if the variable starts with a certain letter,
then we could use an if statement to change it to something else
or leave it as it is and print it
"""
customer = "andrew"
if customer.startswith("a"):
    customer.capitalize()

print(customer)
