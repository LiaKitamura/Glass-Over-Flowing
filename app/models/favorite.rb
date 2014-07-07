class Favorite < ActiveRecord::Base
  belongs_to :favorable, polymorphic: true

  

  # method that takes current user and a beer they favorite
  # def some_name(user, beer)
  #   favorite_array = []
  #   if user has favorited a beer
  #     favoriteArray << userFavoriteBeer
  #   end
  # end
end
