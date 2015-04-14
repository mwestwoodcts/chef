require File.join(File.dirname(__FILE__), 'resource_database')

class Chef
  class Resource
    class DatabaseColumn < Chef::Resource::Database
      def initialize(name, run_context = nil)
        super
        @resource_name = :database_column
        @columnname = name

        @database_name = nil
        @table_name = nil
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

      def table_name(arg = nil)
        set_or_return(
          :table_name,
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

      def columnname(arg = nil)
        set_or_return(
          :columnname,
          arg,
          kind_of: String
        )
      end
    end
  end
end
