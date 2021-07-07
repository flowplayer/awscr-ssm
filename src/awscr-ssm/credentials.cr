module Awscr
  module SSM
    module Credentials
      abstract def key : String
      abstract def secret : String
    end

    struct SimpleCredentials
      include Credentials

      getter key : String 
      getter secret : String

      def initialize(@key : String, @secret : String)
      end
    end

    struct EnvCredentials
      include Credentials

      def initialize
      end

      def key : String
        ENV["AWS_ACCESS_KEY_ID"]
      end

      def secret : String
        ENV["AWS_SECRET_ACCESS_KEY"]
      end
    end
  end
end
