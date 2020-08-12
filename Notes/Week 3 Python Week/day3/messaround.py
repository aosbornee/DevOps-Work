"""
Logging in Py
"""


class Employees:
    raise_amount = 1.05

    def __init__(self, first, last, salary):
        self.first = first
        self.last = last
        self.salary = salary
        self.email = first + "." + last + "@techltd.com"

    def full_name(self):
        return "{} {}".format(self.first, self.last)

    def apply_raise(self):
        self.salary = int(self.salary * self.raise_amount)


class Developers(Employees):
    raise_amount = 1.10

    def __init__(self, first, last, salary, prog_lang):
        super().__init__(first, last, salary)
        self.prog_lang = prog_lang


emp1 = Employees("Andrew", "Osborne", 120_000)

dev1 = Developers("John", "Smith", 100_000, "JavaScript")


dev1.apply_raise()

print(dev1.salary)



# print(dev1.salary)

# print(emp1.email)
#
# print(dev1.prog_lang)




