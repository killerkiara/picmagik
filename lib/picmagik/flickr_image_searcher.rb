require "httparty"

module Picmagik
  module FlickrImageSearcher
    include HTTParty
    API_KEY = '44f36a01101a6c77bd111c23e7de414a'

    base_uri "https://api.flickr.com/services/rest/"

    def self.fetch_image_for_keyword(keyword)
      get("?method=flickr.photos.search&api_key=#{API_KEY}&tags=#{keyword}&sort=interestingness_desc&per_page=1&format=json&nojsoncallback=1")
    end

    # https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=44f36a01101a6c77bd111c23e7de414a&tags=pizza&sort=interestingness_desc&per_page=1&format=json
  end
end
