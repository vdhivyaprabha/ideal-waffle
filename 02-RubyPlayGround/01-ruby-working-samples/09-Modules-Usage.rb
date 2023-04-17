=begin
  This Module is intended to demonstrate how the module is define and how the module is used in a different class, Here 
  we have two modules to demonstrate , The first Module is Authentication and we have HTTP class inside it and 
  we have another module called Serializers inside this module, we have created a class ModuleUsage where the main 
  Authentication module is included and Objects inside the modules are accessed.
=end
module Authentication

    AUTH_ENDPOINT = 'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid={API key}'
  
    def self.configure
      puts("Authenticationisgetting Configured")
    end
  
    class Http
      def self.get
        puts("Get Request is triggered from Http class")
      end

      def setHeaders()
        puts("Setting headers for the API request")
      end
    end
  
    module Serializers
      class JsonSerializer

        def initialize()
          puts("JSON Serializer is getting Initialized from class JsonSerializer and Module Serializers")
        end

        def serialize()
          puts("Serializing Contends of JSON")
        end
      end
    end
end

class ModuleUsage
  include Authentication

  def check_serializer_available()
    serializer_instance = Authentication::Serializers::JsonSerializer.new()
    serializer_instance.serialize()
  end
end

module_usage_instance = ModuleUsage.new()

# refereing objects inside the Modules which is included.
authentiction_end_point = Authentication::AUTH_ENDPOINT
puts("AUTH END POINT :: #{authentiction_end_point}")

# Accesssing the classess inside the module that is included.
http_instance = Authentication::Http.new()
http_instance.setHeaders()

# Accessing the Module inside the module which is included.
module_usage_instance.check_serializer_available()

