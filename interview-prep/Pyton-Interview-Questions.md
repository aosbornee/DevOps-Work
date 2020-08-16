


## What is Python

-

## What is OOP

- OOP is the view everything as objects which can be instantiated through the use of classes. One of the main principles of OOP is Encapsulation so that everything an object needs will be inside the object

- OOP emphasizes reusability through inheritance and Polymorphism, keeping the changes to code minimal

- This is different to a functional programming language where the primary focus in on returning values from functions


## What are the four pillars of OOP

#### Encapsulation



#### Abstraction

- focuses on hiding the internal implemtations of a process or method from the user
- This is achieved in python through using abstract classes and interfaces

- An analogy would be where we click on a button to make coffee, we are unaware of the complexities


#### Inheritance

- In Python we can inherit from parent classes into child classes, this is helpful
where we want to create another class that has many of the same functionalities as another

- This allows for DRY code

- We will use the following

```Python
def __init__ (self, first_name, last_name, age, nationality, bank_sort_code, stream, sparta_rank):
  super().__init__(first_name, last_name, age, nationality, bank_sort_code)
```

- This means that we do not need to re initisialise the attributesas we have used the
super method


#### Polymorphism

- Poly means many and morph means change

- Polymorphism works by Method overwritting and method overloading

-
