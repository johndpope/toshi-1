module Toshi
  class Address < ApiResource
    class << self
      def find(identifier)
        response = client.get '/addresses/'+identifier.to_s
        create_one(response)
      end
    end
  end
end
