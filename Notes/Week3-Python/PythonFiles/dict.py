"""
Dictionaries are more dynamic than tuples and lists
as each value is assigned with a key.

Unlike lists, dictionaries are unordered and not held in any particular order
therefore indexing is not used.
"""

student_record = {"name": "Andrew",
                  "stream": "DevOps",
                  "completed topics": 5,
                  "completed_lessons_names": ["strings", "tuples", "variables"]

}

# print(type(student_record))
# # Tells us that this is a dict
# print(sorted(student_record))
# This has sorted the dictionary in alphabetical order based on the keys

# print(student_record.values())
# This will return only the values of the dictionary

# for each key:value in the dictionary, we are printing the key
# for n in student_record:
#     print(n)

# for each key:value pair in the record, we are printing the value
# for n in student_record:
#     print(student_record[n])


# Removing an element in a list which is stored in a dictionary
# student_record["completed_lessons_names"].remove("tuples")

# Appending an element onto a list which is stored as a value within a dictionary
"""
firstly I have accessed the key 'completed_lessons_names'


"""
# student_record["completed_lessons_names"].append("lists")

# student_record["completed_lessons_names"].insert(0, "string_casting")
#
#
# print(student_record)
# print(student_record["completed_lessons_names"])
# print(student_record[2])

"""
Dictionary get() Method returns the value of the 
item with the specified key.
"""
# print(student_record.get("name"))
# This will return the value associated with the key 'name'


"""
fetch the variables element and also fetch the value of name
"""


#here we are first accessing the key inside the dictionary
#here we are now accesing the third element within that list

# print(student_record["completed_lessons_names"][2])
# print(student_record["completed_lessons_names"])