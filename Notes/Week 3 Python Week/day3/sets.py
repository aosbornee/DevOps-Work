"""
Sets are very similar to lists,
the difference is that sets are unordered
we use {} just like dictionaries
"""

car_par = {"wheels", "windows", "doors"}
print(car_par)

# Here we are adding seats to the set
car_par.add("seats")
print(car_par)

# Here we are removing windows from the set
car_par.discard("windows")
print(car_par)

"""
Frozen set

We use () and store them in a variable
"""

counting = frozenset([1, 2, 3, 4])
# We could use these for storing number plates
# Frozen sets are immutable