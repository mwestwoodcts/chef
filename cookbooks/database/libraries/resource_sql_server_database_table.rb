require File.join(File.dirname(__FILE__), 'resource_database_table')
require File.join(File.dirname(__FILE__), 'provider_database_sql_server_table')

class Chef
  class Resource
    class SqlServerDatabaseTable < Chef::Resource::DatabaseTable
      def initialize(name, run_context = nil)
        super
        @resource_name = :sql_server_database_table
        @provider = Chef::Provider::Database::SqlServerTable
      end
    end
  end
end