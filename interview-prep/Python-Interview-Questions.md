


## What is Python

- Python is often described as a jack of all trades language as its potential applications can be seen far and wide in almost
all aspects of the tech sector, from machine learning, to Instagram to even being the backbone of many DevOps tools such as
Ansible

- In my most challenging but rewarding project I was able to create a user interface using the core concepts of OOP
as well as additional libraries such as Pandas and Numpy to create a Airport project in which the data was successfully stored
in a SQL database

- Additionally I have created A web application with user authentication which is stored in a database using the microframework flask,
this application was then deployed onto a virtual machine which was configured with the correct DEV environment to effectively run the application

## What is OOP


- programming model that organises things into objects rather than functions and logic

- These objects can have unique characteristics and behaviours which are in the form of methods and attributes

- OOP emphasizes reusability through inheritance and Polymorphism, keeping the changes to code minimal

- This is different to a functional programming language where the primary focus in on returning values from functions

- Classes are the blueprint and from these we create objects, classes have methods and attributes and these are what the objects are and what they can do

- in our project we had a classes of plane which had methods such as flying, refuelling etc.
- We can then have another class called flights, the objects of these classes can then interact with other classes


## When did you implement OOP

- In my airport project with three of my colleagues
- aim was to create a user interface for airport attendant
- Was effectively able to use classes and methods to hide the complexities of how the interface worked
- Used aspects of polymorphism, had a parent class for adults and made a sub class called child, they both had a function called price but both of them returned different values, this is method overwriting
-


## What are the four pillars of OOP

#### Encapsulation

- It describes the idea of wrapping data and the methods that work on data within one unit. This puts restrictions on accessing variables and methods directly and can prevent the accidental modification of data.

#### Abstraction

- focuses on hiding the internal workings of a process or method from the user
- This is achieved in python through using abstract classes and interfaces

- An analogy would be where we click on a button to make coffee, we are unaware of the complexities


#### Inheritance

- In Python we can inherit from parent classes into child classes, this is helpful
where we want to create another class that has many of the same functionalities as another

- This allows for DRY code




#### Polymorphism

- Poly means many and morph means forms

- Polymorphism works by Method overwritting and method overloading



#### What is test driven development (TDD)

- literally what is says on the tin, the test drives the development
- with unit testing we build a function then test it, here we do the opposite
- We only write the code for the test to pass, nothing more
- This keeps us focused on what we are doing


#### Difference between unit testing and integrational testing and functional testing


- Integration testing is where we combine the units tested and test them as a whole, to see
if they work together
