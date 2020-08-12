"""
While loops - Will continue until specified otherwise
For loops - Will iterate over an array
"""

# list_data = [1, 2, 3, 4, 5]
#
# for n in list_data:
#     # here we are controlling the flow, IF the number is greater than 4
#     if n > 4:
#         # break statements works by stopping the loop
#         break
#     # for each iteration of list_data, we are printing n to the console
#     print(n)
#
# pass
#
# # city = "London"
# returning each letter in the string
# for letter in city:
#     print(letter)
#
#
# string = ""
# name = "Andrew"
# for index in name:
#     string += " " + index
#     if name[-1] == index:
#         print(string)


"""
Referring back to the dict we used earlier,
we can also loop through dict's
"""
student_record = {"name": "Andrew",
                  "stream": "DevOps",
                  "completed topics": 5,
                  "completed_lessons_names": ["strings", "tuples", "variables"]

}

# for record in student_record:
#     print(student_record[record])
#
# for record in student_record.values():
#     print(record)





# for letter in "iterable":
#     # what is the end telling us
#     print(letter, end="")


"""
While Loops!!!!
"""

x = 1

while x < 5:
    print(f"it's working -> {x}")
    x += 1
else:
    print("Damn, the number's too high!")

