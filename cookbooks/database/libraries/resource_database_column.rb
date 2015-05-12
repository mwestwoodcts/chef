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
        @size = nil
        @type = nil
        @null = true
        @description = nil
        @constraint = nil
        @default = nil
        @collate = nil
        parseString(name)

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

      def type(arg = nil)
        set_or_return(
          :type,
          arg,
          kind_of: String
        )
      end

      def size(arg = nil)
        set_or_return(
          :size,
          arg,
          kind_of: String
        )
      end

      def description(arg = nil)
        set_or_return(
          :description,
          arg,
          kind_of: String
        )
      end

      def constraint(arg = nil)
        set_or_return(
          :constraint,
          arg,
          kind_of: String
        )
      end

      def default(arg = nil)
        set_or_return(
          :default,
          arg,
          kind_of: String
        )
      end

      def collate(arg = nil)
        set_or_return(
          :collate,
          arg,
          kind_of: String
        )
      end

      def null(arg = nil)
        set_or_return(
          :null,
          arg,
          kind_of: [TrueClass, FalseClass]
        )
      end

      protected
      def parseString(string)
        workingCopy = string
        #counter for For loop
        i = 0
        #counts how many periods have been found
        currentString = 0
        #records the location of the periods
        parseMap = [0, 0, 0]

        #basically a for loop
        while i < workingCopy.size && currentString < 3
        # T if current index is a .
          if workingCopy[i]==(".")
            parseMap[currentString]=i
            currentString+=1
          end
          i += 1
        end
        #make sure everything is correct before we chop up the string
        #enough periods?
        if currentString!=3
          #puts "invlaid String, not enough periods "
          return nil, nil, nil, nil
        end
        #needs more checks??
        if parseMap==[0,1,2]
          #puts "its just ... false alarm"
          return nil,nil,nil,nil
        end
        #chop up the string and return
        _DataBase=workingCopy[0..parseMap[0]-1]
        _Schema=workingCopy[parseMap[0]+1..parseMap[1]-1]
        _Table=workingCopy[parseMap[1]+1..parseMap[2]-1]
        _Column=workingCopy[parseMap[2]+1..workingCopy.size-1]

        #final check, are they all numbers?
        dbsize=_DataBase.size()
        if(/\A[-+]?\d+\z/===_DataBase)
          return
        end
        if(/\A[-+]?\d+\z/===_Schema)
          return
        end
        if(/\A[-+]?\d+\z/===_Table)
          return
        end
        if(/\A[-+]?\d+\z/===_Column)
          return
        end
        @database_name = _DataBase
        @schema_name = _Schema
        @table_name = _Table
        @columnname = _Column
      end
    end
  end
end
