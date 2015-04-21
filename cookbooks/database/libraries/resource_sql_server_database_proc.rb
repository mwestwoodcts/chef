require File.join(File.dirname(__FILE__), 'resource_database_proc')
require File.join(File.dirname(__FILE__), 'provider_database_sql_server_proc')

class Chef
  class Resource
    class SqlServerDatabaseProc < Chef::Resource::DatabaseProc
      def initialize(name, run_context = nil)
        super
        @resource_name = :sql_server_database_proc
        @provider = Chef::Provider::Database::SqlServerProc
      end
    end
  end
end