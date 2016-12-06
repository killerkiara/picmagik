require 'thor'

module Picmagik
  class Runner < Thor
    desc "hello NAME", "This will ask for keywords"

    def hello (name)
      greeting = "Hello! Give me some keywords"
      puts greeting
    end

    desc "Please give me 10 keywords to search for images. KEYWORDS", "this will ask for 10 keywords"

    def enter_keywords(*keywords)
      puts "You entered #{keywords.length} keywords!"
      puts "I will search for images for your keywords"
      print keywords
      Picmagik.give_images(keywords)
    end
  end
end
