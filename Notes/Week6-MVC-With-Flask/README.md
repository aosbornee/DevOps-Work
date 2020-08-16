# Model View Controller




## What is Flask?

- Flask is a micro web framework, it is usually referred to as a 'do it yourself'
package as it is very lightweight and doesn't come with any build in pacakges

-


- It is very beneficial for beginners to initially work with flask as there are less layers of abstraction, thus allowing the user to interact and understand the features
themselves


## App Routing

- In flask we use the route decorator to bind a function to a URL

```python
@app.route('/')
def index():
    return 'Index Page'
```

## HTTP Methods

- By default, a route only answers to **GET** requests, using the methods arguments
we can handle other HTTP methods

```python
from flask import request

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        return do_the_login()
    else:
        return show_the_login_form()
```

## Rendering Templates

- To do this we can simply use the the 'render_template' method, flask will then
look for the **templates** folder for the HTML file we are referring to

```python
from flask import render_template

@app.route('/')
def index():
    return render_template('index.html')
```

## Template Inheritance

- Flask uses the Jinja2 template which allows for template Inheritance
- This allows us to create a base 'skeleton' template and create child templates
in which we can override things
- The base template is commonly referred to as ```layout.html```

```html
<!doctype html>
<html>
  <head>
    {% block head %}
    <link rel="stylesheet" href="{{ url_for('static', filename='style.css') }}">
    <title>{% block title %}{% endblock %} - My Webpage</title>
    {% endblock %}
  </head>
  <body>
    <div id="content">{% block content %}{% endblock %}</div>
    <div id="footer">
      {% block footer %}
      &copy; Copyright 2010 by <a href="http://domain.invalid/">you</a>.
      {% endblock %}
    </div>
  </body>
</html>
```
- Here the block tags refer to places that our child template can then fill in

#### The Child template could then look like:

```html
{% extends "layout.html" %}
{% block title %}Index{% endblock %}
{% block head %}
  {{ super() }}
  <style type="text/css">
    .important { color: #336699; }
  </style>
{% endblock %}
{% block content %}
  <h1>Index</h1>
  <p class="important">
    Welcome on my awesome homepage.
{% endblock %}
```
- The extends tag at the beginning is telling our child template where to inherit
the skeleton of the page from

## Flask-SQL Alchemy

- Flask-SQLAlchemy allows for the easy usage of SQLAlchemy

- In SQLAlchemy, tables are defined using classes

```python
from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:////tmp/test.db'
db = SQLAlchemy(app)

class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)
```

- From here, we can then enter the python console and create our database

```bash
python

>>> from yourapplication import db
>>> db.create_all()

```

#### Accessing the data using queries

```python
User.query.filter_by(username='Andrew19').first()
```

## Running Flask Applications

- When working on our application it would be best to work in development mode,
this means that any changes we make will show on the webpage without having to rerun
the application

- In the terminal we do the following
```bash
SET FLASK_ENV=development
```
- We can also set the folder that we are working on to the app

```bash
SET FLASK_APP=project
```

Now when we run ```flask run``` our application will be loaded onto our local host
