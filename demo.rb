require_relative 'rubysequel'

DBConnection::reset

class Town < SQLObject
  self.table_name = "towns"
  has_many :trainers,
  class_name: 'Trainer',
  foreign_key: :town_id

  finalize!
end

class Trainer < SQLObject
  self.table_name = "trainers"
  has_many :pokemons,
  class_name: "Pokemon",
  foreign_key: :trainer_id

  belongs_to :town,
  class_name: "Town",
  foreign_key: :town_id

  finalize!
end


class Pokemon < SQLObject
  self.table_name = "pokemons"
  belongs_to :trainer,
  class_name: 'Trainer',
  primary_key: :id,
  foreign_key: :trainer_id

  has_one_through :town, :trainer, :town

  finalize!
end

pokemon = Pokemon.all
puts pokemon
