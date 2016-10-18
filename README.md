# RubySequel
A lightweight ORM library inspired by Ruby on Rails' Active Record.  RubySequel performs SQLite3 with methods through Object Oriented objects rather than SQL queries.  This provides a quicker and more simplified way for the database to be accessed.

##Libraries

RubySequel uses:
* SQLite3
* ActiveSupport::Inflector

##Methods

* `::all`
* `::find(id)`
* `::where(params)`
* `::insert`
* `#update`
* `#save`

## Associations

* `has_many(name, options)`
* `belongs_to(name, options)`
* `has_one_through(name, through_name, source_name)`

## Usage

RubySequel takes in a SQLite3 database which is done through `DBConnection`.  By default the gem has been preset with a demo database and it's variables are pre-filled.  RubeSequel's methods and associations can be seen by loading `demo.rb` in pry.  This can be done by entering `load './demo.rb'` into the pry console.

To test the methods or associations simply type use on of the listed methods or associations.  For example:

If you wanted to find get all from the `pokemons` table, in `SQL` you would write:

```
SELECT
*
FROM
pokemons;
```

However in RubySequel you can simply do this:

`Pokemon.all`

## Custom Databse

To load a custom database, simply change the `DEMO_DB_FILE` to your `.db` file and `DEMO_SQL_FILE` to your `.sql` file in `demo.rb`.  
