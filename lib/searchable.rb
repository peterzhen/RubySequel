require_relative 'db_connection'
require_relative 'sql_object'

module Searchable
  def where(params)
    where_line = params.map{ |key,val| "#{key} = ?" }.join("AND")
    vals = params.map { |key,val| val }
    results = DBConnection.execute(<<-SQL, *vals)
    SELECT
      #{table_name}.*
    FROM
      #{table_name}
    WHERE
      #{where_line}
    SQL

    results
  end
end

class SQLObject
  extend Searchable
end
