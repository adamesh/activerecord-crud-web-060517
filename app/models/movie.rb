class Movie < ActiveRecord::Base
  def create_table
    sql = <<-SQL
      CREATE TABLE movies (
        id INTEGER PRIMARY KEY,
        title TEXT,
        release_date INTEGER,
        director TEXT,
        lead TEXT,
        in_theaters BOOLEAN
      )
    SQL

    ActiveRecord::Base.connection.execute(sql)

  end
end

# columns for
# title
# release_date
# director
# lead
# in_theaters
