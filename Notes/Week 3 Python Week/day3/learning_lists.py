"""
Data collection

[lists] is the syntax for creating lists
(tuple)
{dictionaries} key:value pairs e.g name:Andrew

All of these are helpful for collection data, with different capabilities

lists are mutable where as tuples are not

"""

cities = ["Tokyo", "Paris", "Prague", "Luxemburg"]
# If a question refers to the word 'display', we need to use the print option

# print(cities)
#
# print(type(cities))
# this will tell us that cities is a list
# Helpful if we were unsure what data we are working with if given unseen code

cities[3] = "Amsterdam"
# Here we have changed the last city to 'Amsterdam
# print(cities)

#Adding another city to the end of the list
cities.append("London")
# print(cities)

#Removing from a list by value
# cities.remove("Paris")
# print(cities)

#Removing from a list by index
# cities.remove(cities[1])
# print(cities)

# Using the pop() built in method
# If left empty, pop will remove the last index
# cities.pop()

#By adding an arguement we can remove an index
# cities.pop(1)
# print(cities)

#Using the insert built in function
#Here we have added a value at a given index
#So london has been added to the second position in the list
# cities.insert(1, "London")
# print(cities)

#Working with mixed data type strings
mixed_type_string = [11, 5.6, "one", True]

#We have stored two lists within a list of lists
list_of_lists = [[1, 2, 3], ["one", "two", "three"]]
print(list_of_lists)









