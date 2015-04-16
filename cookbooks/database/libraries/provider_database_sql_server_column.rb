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
              db.execute("USE [#{@new_resource.database_name}]").do
              alter_statement = "ALTER TABLE [#{@new_resource.table_name}] ADD [#{new_resource.name}]"
              alter_statement += " #{@new_resource.type}"
              unless @new_resource.size.nil?
                alter_statement += "(#{@new_resource.size})"
              end
              alter_statement += " NULL"
              Chef::Log.info("#{@new_resource}: Creating column #{@new_resource.table_name}.dbo.#{new_resource.name} with statement [#{alter_statement}]")
              db.execute(alter_statement).do
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