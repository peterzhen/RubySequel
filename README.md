# RubySequel
RubySequel is a lightweight ORM library.  RubySequel performs SQLite3 with methods through Object Oriented objects by translating SQL queries.  This provides for a quicker, more simplified way for the database to be accessed.

##Libraries

RubySequel uses:
* SQLite3
* ActiveSupport::Inflector

##Methods

* `::all` - returns all rows from the SQLObject.
* `::find(id)` - returns the rows from the SQLObject that matches the `id` parameter
* `::where(params)` - returns all rows from the SQLObject that matches `params`, which takes in a key value hash.
* `::insert` - creates a new row and inserts it into the database.
* `#update` - updates the attributes for the current SQLObject.
* `#save` - inserts a SQLObject.

## Associations

* `has_many(name, options)`
* `belongs_to(name, options)`
* `has_one_through(name, through_name, source_name)`

## Demo

A demo database has been included in the RubySequel's root to showcase the general functionality.  RubeSequel's methods and associations can be seen by loading `demo.rb` in pry.  First, do a bundle install in the directory.  Then the demo can be loaded by entering `load './demo.rb'` into the pry console.

To test the methods or associations, simply use one of the listed methods or associations.

For example, if you wanted to find get all from the `pokemons` table, in `SQL` you would write:

```
SELECT
  *
FROM
  pokemons;
```

However in RubySequel you can just do this:

`Pokemon.all`

## Custom Databse

To load a custom database, change the `DEMO_DB_FILE` to match your `.db` file and `DEMO_SQL_FILE` to your `.sql` file in `demo.rb`.  

## Adding RubySequel To Your Project

In order to use RubySequel in your project you need to `require_relative` for `rubysequel.rb` and then extend `SQLObject` in your model class.
