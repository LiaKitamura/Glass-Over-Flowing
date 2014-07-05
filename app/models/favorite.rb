class Favorite < ActiveRecord::Base
  belongs_to :favorable, polymorphic: true
end
