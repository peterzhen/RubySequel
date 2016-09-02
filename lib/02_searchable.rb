require_relative 'db_connection'
require_relative '01_sql_object'

module Searchable
  def where(params)
    where_line = params.map{ |key,val| "#{key} = ?" }.join("AND")
    results = DBConnection(<<-SQL)
    SELECT
      #{table_name}.*
    FROM
      #{table_name}
    WHERE
      #{where_line}
    SQL

    parse_all(results).first
  end
end

class SQLObject
  include Searchable
end
