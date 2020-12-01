require 'net/http'
require 'open-uri'
require 'json'


class GetRequester

    def initialize(url)
        @url = url
    end

        # sends a GET request to the URL passed in on initialization. This method should return the body of the response.
    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

        # method should use get_response_body to send a request, then return a Ruby Array or Hash made up of data converted from the response of that request.
    def parse_json
        JSON.parse(get_response_body)

    end


end
binding.pry