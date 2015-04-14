require File.join(File.dirname(__FILE__), 'provider_database_sql_server')

class Chef
  class Provider
    class Database
      class SqlServerColumn < Chef::Provider::Database::SqlServer
        include Chef::Mixin::ShellOut
        def load_current_resource
          Gem.clear_paths
          require 'tiny_tds'
          @current_resource = Chef::Resource::DatabaseColumn.new(@new_resource.name)
          @current_resource.columnname(@new_resource.name)
          @current_resource
        end

        def action_create
          unless exists?
            begin
              Chef::Log.debug("#{@new_resource}: Creating column #{@new_resource.table_name}.dbo.#{new_resource.name}")
              db.execute("USE [#{@new_resource.database_name}]").do
              db.execute("ALTER TABLE [#{@new_resource.table_name}] ADD [#{new_resource.name}] int NULL").do
              @new_resource.updated_by_last_action(true)
            ensure
              close
            end
          end
        end

        private

        def exists?
          db.execute("USE [#{@new_resource.database_name}]").do
          result = db.execute("SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '#{@new_resource.table_name}' AND COLUMN_NAME = '#{@new_resource.columnname}' AND TABLE_SCHEMA='#{@new_resource.schema_name}'")
          result.each.any?
        end

      end
    end
  end
end