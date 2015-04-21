require File.join(File.dirname(__FILE__), 'resource_database')

class Chef
  class Resource
    class DatabaseProc < Chef::Resource::Database
      def initialize(name, run_context = nil)
        super
        @resource_name = :database_proc
        @storedprocname = name

        @database_name = nil
        @schema_name = nil

        @allowed_actions.push(:create)
        @action = :create
      end

      def database_name(arg = nil)
        set_or_return(
          :database_name,
          arg,
          kind_of: String
        )
      end

      def schema_name(arg = nil)
        set_or_return(
          :schema_name,
          arg,
          kind_of: String
        )
      end

      def storedprocname(arg = nil)
        set_or_return(
          :storedprocname,
          arg,
          kind_of: String
        )
      end
    end
  end
end
