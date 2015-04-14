require File.join(File.dirname(__FILE__), 'resource_database')

class Chef
  class Resource
    class DatabaseTable < Chef::Resource::Database
      def initialize(name, run_context = nil)
        super
        @resource_name = :database_table
        @tablename = name

        @database_name = nil

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

      def tablename(arg = nil)
        set_or_return(
          :tablename,
          arg,
          kind_of: String
        )
      end
    end
  end
end
