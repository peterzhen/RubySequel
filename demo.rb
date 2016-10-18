require_relative 'rubysequel'

DEMO_DB_FILE = 'pokemon.db'
DEMO_SQL_FILE = 'pokemon.sql'


`rm '#{DEMO_DB_FILE}'`
`cat '#{DEMO_SQL_FILE}' | sqlite3 '#{DEMO_DB_FILE}'`

DBConnection.open(DEMO_DB_FILE)

class Pokemon < SQLObject
  belongs_to :trainer,
  class_name: "Trainer",
  primary_key: :id,
  foreign_key: :trainer_id

  has_one_through :town, :trainer, :town

  finalize!
end

class Trainer < SQLObject
  has_many :pokemons,
  class_name: "Pokemon",
  foreign_key: :trainer_id

  belongs_to :town,
  class_name: "Town",
  foreign_key: :town_id

  finalize!
end

class Town < SQLObject
  has_many :trainers,
  class_name: "Trainer",
  foreign_key: :town_id,
  primary_key: :id

  finalize!
end
