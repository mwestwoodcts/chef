require File.join(File.dirname(__FILE__), 'provider_database_sql_server')

class Chef
  class Provider
    class Database
      class SqlServerProc < Chef::Provider::Database::SqlServer
        include Chef::Mixin::ShellOut
        def load_current_resource
          Gem.clear_paths
          require 'tiny_tds'
          @current_resource = Chef::Resource::DatabaseProc.new(@new_resource.name)
          @current_resource.storedprocname(@new_resource.name)
          @current_resource
        end

        def action_create
          begin
            Chef::Log.debug("#{@new_resource}: Creating stored proc #{new_resource.name}")
            db.execute("USE [#{@new_resource.database_name}]").do
            if exists?   
              Chef::Log.info("Dropping #{@new_resource.storedprocname}")    
              db.execute("DROP PROC #{@new_resource.storedprocname}").do
            end
                     
            script_file = "#{Chef::Config[:file_cache_path]}/cookbooks/#{@new_resource.file_loc}/files/default/#{@new_resource.database_name}/#{@new_resource.storedprocname}.sql"
            Chef::Log.info("Loading script: #{script_file}")
            script = ::File.open(script_file).read
            db.execute("#{script}").do
            @new_resource.updated_by_last_action(true)
          ensure
            close
          end
        end

        private

        def exists?
          db.execute("USE [#{@new_resource.database_name}]").do
          result = db.execute("SELECT s.name SchemaName,o.name RoutineName, o.[type] RoutineType, procs.* FROM sys.sql_modules procs INNER JOIN sys.objects o ON procs.object_id = o.object_id INNER JOIN sys.schemas s ON o.schema_id = s.schema_id WHERE o.name = '#{@new_resource.storedprocname}' AND s.name = '#{@new_resource.schema_name}'")
          result.each.any?
        end

      end
    end
  end
end