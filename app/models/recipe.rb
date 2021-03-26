class Recipe < ApplicationRecord
    belongs_to :user 

    def self.get_data
        response = RestClient.get("http://www.recipepuppy.com/api/?i=onions,garlic&q=omelet&p=3")
        recipes = JSON.parse(response)["results"]

        recipes.each do |recipe|
            self.create(title: recipe["title"], ingredients: recipe["ingredients"], img_url: recipe["thumbnail"]) 
        end
    end
end
