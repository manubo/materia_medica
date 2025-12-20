# frozen_string_literal: true

module RailsExt
  # Module to enhance SQLite3Adapter with pragma configuration support
  module SQLite3Adapter
    def configure_connection
      super

      @config[:pragmas].each do |key, value|
        execute("PRAGMA #{key} = #{value}", 'SCHEMA')
      end
    end
  end
end

ActiveSupport.on_load(:active_record_sqlite3adapter) do
  # self refers to `SQLite3Adapter` here,
  # so we can call .prepend
  prepend RailsExt::SQLite3Adapter
end
