require File.join(File.dirname(__FILE__), 'provider_database_sql_server')

class Chef
  class Provider
    class Database
      class SqlServerTable < Chef::Provider::Database::SqlServer
        include Chef::Mixin::ShellOut
        def load_current_resource
          Gem.clear_paths
          require 'tiny_tds'
          @current_resource = Chef::Resource::DatabaseTable.new(@new_resource.name)
          @current_resource.tablename(@new_resource.name)
          @current_resource
        end

        def action_create
          unless exists?
            begin
              Chef::Log.debug("#{@new_resource}: Creating table #{new_resource.name}")
              db.execute("USE [#{@new_resource.database_name}]").do
              db.execute("CREATE TABLE #{@new_resource.tablename}(UniqueKey int)").do
              @new_resource.updated_by_last_action(true)
            ensure
              close
            end
          end
        end

        private

        def exists?
          db.execute("USE [#{@new_resource.database_name}]").do
          result = db.execute("SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = '#{@new_resource.tablename}'")
          result.each.any?
        end

      end
    end
  end
end