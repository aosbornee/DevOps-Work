"""
A tuple is a way to store data that we do not want
to change and thus is IMMUTABLE

This is helpful for data that never change, take for example date of birth,
NHS ID number and NI number

Note if we made an error in a tuple, we would have to convert the tuple to a list,
make the necessary changes and then change back to a tuple
"""

dob = ("name", "dob", "passport number")
# print(dob)

"""
What can be done with tuples?
Convert the tuple into a string

add my name to the string at 0 index

display the list
"""
# print(dob[2])
# print(dob[:2])

#Converting the tuple into a string and replacing the name with my name
tuple_string = ", ".join(dob)
# print(tuple_string)

print(tuple_string.replace("name", "Andrew"))

#Converting a tuple to a list
tuple_list = list(tuple_string)
tuple_list[0] = "Andrew"
print(tuple_list)







