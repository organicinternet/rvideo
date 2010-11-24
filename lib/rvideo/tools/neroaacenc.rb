module RVideo
  module Tools
    class NeroAacEnc
      include AbstractTool::InstanceMethods
      attr_reader :raw_metadata

      def tool_command
        'neroAacEnc'
      end
      
      private
      
      def parse_result(result)
        #currently, no useful info returned in result to determine if successful or not
        @raw_metadata = result.empty? ? "No Results" : result
        return true
      end
      
    end
  end
end
