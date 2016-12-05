require "picmagik/version"
require "httparty"
require "pickmagik/random_keyword_searcher"

module Picmagik
  include HTTParty
  API_KEY = 'adc47ac077889395f9fa3a8150ae9aa2'

  base_uri "https://api.flickr.com/services/rest/"

  def self.fetch_images(keywords_list)
    images = []
    args.each do |keyword|
      image = get("?method=flickr.photos.search&api_key=API_KEY&tags=#{keyword}&sort=interestingness_desc&per_page=1&format=json")
      images << image
    end
  end

  def self.ensure_keywords_list_size(*args)
    keywords = []
    if args.length == 10
      keywords << args
      self.fetch_images
    elsif args.length > 10
      puts 'You gave more than 10 keywords, any extra one will be ingored :)'
      keywords << args[0..9]
    else
      (10 - args.length).times do
        keywords << Picmagik::RandomKeywordSearcher.fetch_random_keyword
      end
    end

  end
end
