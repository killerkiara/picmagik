module Picmagik
  class ImagesListBuilder
    IMAGE_SIZE = 10

    attr_reader :images_list, :given_keywords

    def initialize(given_keywords=[])
      @given_keywords = given_keywords
      @images_list = []
    end

    def build_images_list!
      while images_list_size < IMAGE_SIZE
        keyword = next_keyword
        puts keyword
        image = load_image(keyword)
        puts image
        images_list << image if image_exists_for_keyword?(image)
      end
    end

    private

    def images_list_size
      images_list.length
    end

    def next_keyword
      given_keywords.shift || random_keyword
    end

    def random_keyword
      Picmagik::RandomKeywordSearcher.fetch_random_keyword
    end

    def load_image(keyword)
      Picmagik::FlickrImageSearcher.fetch_image_for_keyword(keyword)
    end

    def image_exists_for_keyword?(image)
      image["photos"]["photo"].length > 0
    end
  end
end
