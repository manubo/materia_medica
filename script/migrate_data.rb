require "active_record"
require "pg"
require "sqlite3"

postgres_config = {
  adapter: "postgresql",
  host: "localhost",
  port: 5532,
  username: "materia_medica",
  password: "docker",
  database: "materia_medica",
}

sqlite_config = {
  adapter: "sqlite3",
  database: "data/materia_medica.sqlite3",
}

ActiveRecord::Base.connects_to(
  database: {
    postgres: postgres_config,
    sqlite: sqlite_config,
  }
)

tables_to_migrate = [
  "remedies",
  "categories",
  "entries",
]

tables_to_migrate.each do |table_name|
  puts "Migrating table: #{table_name}"

  # Fetch data from PostgreSQL
  data = ActiveRecord::Base.connected_to(role: :postgres) do
    ActiveRecord::Base.connection.select_all("SELECT * FROM #{table_name}")
  end

  # Insert data into SQLite
  data.rows.each do |row|
    attributes = data.columns.zip(row).to_h
    ActiveRecord::Base.connected_to(role: :sqlite) do
      ActiveRecord::Base.connection.insert_fixture(attributes, table_name)
    end
  rescue => e
    puts "Error inserting into #{table_name}: #{e.message}"
  end

  puts "Table #{table_name} migrated successfully."
end

puts "Migration completed successfully!"
