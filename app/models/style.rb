class Style < ActiveRecord::Base
  belongs_to :category
  has_many :beers
end
