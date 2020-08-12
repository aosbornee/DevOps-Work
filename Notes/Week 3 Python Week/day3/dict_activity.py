"""
Exercise:
dictionary with 5 key value pair employee records
Use looping to iterate through the dict
display the values and the keys of the dictionary
"""

employee_records = {"Name": "Andrew", "Age": 21, "Role": "DevOps Engineer",
                    "Salary": 120_000, "main_programming_lang": "Python"
}

# Returning both key and value
for key, value in employee_records.items():
    print(key, "-->", value)


# Running only the keys
for record in employee_records:
    print(record)

# Running only the values
for record in employee_records:
    print(employee_records[record])

# there is another way to return the values

for record in employee_records.values():
    print(record)

