require 'open-uri'
require 'net/http'
require 'json'
# Write your code here
class GetRequester
	attr_reader :url
	def initialize(url)
		@url = url
	end
	def get_response_body
		uri = URI.parse(self.url)
		response = Net::HTTP.get_response(uri)
		response.body
	end
	def parse_json
		response = self.get_response_body
		JSON.parse(response)
	end
end
