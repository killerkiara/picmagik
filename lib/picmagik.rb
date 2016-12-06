require "picmagik/version"
require "httparty"
require "picmagik/images_list_builder"
require "picmagik/random_keyword_searcher"
require "picmagik/flickr_image_searcher"
require "picmagik/cli"

module Picmagik
  def self.give_images(keyword_array)
    Picmagik::ImagesListBuilder.new(keyword_array).build_images_list!
  end
end
