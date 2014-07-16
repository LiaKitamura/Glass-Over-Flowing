class Style < ActiveRecord::Base
  extend FriendlyId

  belongs_to :category

  has_many :beers
  friendly_id :style_name, :use => :slugged
end
