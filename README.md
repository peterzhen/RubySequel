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

A demo database has been included in the RubySequel's root to showcase the general functionality.  

To try out RubySequel:
* Clone or download the zip from the github repo
* Run a bundle install in the directory (This requires Ruby)
* Open pry into the console by simple typing in `pry`
* Then the demo can be loaded by entering `load './demo.rb'` into the pry console.

To test the methods or associations, simply use one of the listed methods or associations.

For example, if you wanted to find get all rows from the `pokemons` table, in `SQL` you would write:

```SQL
SELECT
  *
FROM
  pokemons;
```

However in RubySequel you can just do this:

```ruby
Pokemon.all
```

and it will return:

```
=> [#<Pokemon:0x007fdb720b3858 @attributes={:id=>1, :name=>"Pikachu", :trainer_id=>1}>,
 #<Pokemon:0x007fdb720b31a0 @attributes={:id=>2, :name=>"Squirtle", :trainer_id=>1}>,
 #<Pokemon:0x007fdb720b2c78 @attributes={:id=>3, :name=>"Bulbasaur", :trainer_id=>1}>,
 #<Pokemon:0x007fdb720b28e0 @attributes={:id=>4, :name=>"Charmander", :trainer_id=>1}>,
 #<Pokemon:0x007fdb720b2480 @attributes={:id=>5, :name=>"Onix", :trainer_id=>2}>,
 #<Pokemon:0x007fdb720b2020 @attributes={:id=>6, :name=>"Geodude", :trainer_id=>2}>,
 #<Pokemon:0x007fdb720b1bc0 @attributes={:id=>7, :name=>"Staryu", :trainer_id=>3}>,
 #<Pokemon:0x007fdb720b1620 @attributes={:id=>8, :name=>"Starmie", :trainer_id=>3}>,
 #<Pokemon:0x007fdb720b0ef0 @attributes={:id=>9, :name=>"Psyduck", :trainer_id=>3}>,
 #<Pokemon:0x007fdb720b0928 @attributes={:id=>10, :name=>"Mew", :trainer_id=>nil}>]
 ```

In this demo, there are three tables for you to interact with:
* `Pokemon`
* `Trainer`
* `Town`

You can use `::all`, `::find(id)`, `::where(params)` and `::insert` on each of these tables.  
For each individual row you can use `#update` or you can add to a Table by using `#save`.

## Custom Database

To load a custom database, change the `DEMO_DB_FILE` to match your `.db` file and `DEMO_SQL_FILE` to your `.sql` file in `demo.rb`.  

## Adding RubySequel To Your Project

In order to use RubySequel in your project you need to `require_relative` for `rubysequel.rb` and then extend `SQLObject` in your model class.
