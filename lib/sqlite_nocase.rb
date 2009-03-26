module SQLite
  module Nocase
    def add_column_options!(sql, options, type = :nothing) #:nodoc:
      super( sql, options )
      if sql =~ /varchar/ || sql =~ /text/
        sql << " COLLATE NOCASE"
      end
    end
  end
end
ActiveRecord::ConnectionAdapters::SQLiteAdapter.send( :include, SQLite::Nocase)
