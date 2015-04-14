require File.join(File.dirname(__FILE__), 'resource_database_column')
require File.join(File.dirname(__FILE__), 'provider_database_sql_server_column')

class Chef
  class Resource
    class SqlServerDatabaseColumn < Chef::Resource::DatabaseColumn
      def initialize(name, run_context = nil)
        super
        @resource_name = :sql_server_database_column
        @provider = Chef::Provider::Database::SqlServerColumn
      end
    end
  end
end