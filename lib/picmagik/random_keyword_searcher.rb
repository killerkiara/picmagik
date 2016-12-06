require "httparty"

module Picmagik
  class RandomKeywordSearcher
    include HTTParty

    base_uri 'http://www.setgetgo.com/randomword/get.php'

    def self.fetch_random_keyword
      response = get('')
      random_keyword = response.parsed_response
    end
  end
end
