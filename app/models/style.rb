class Style < ActiveRecord::Base
  has_many :beers
  belongs_to :category

  include PgSearch
  multisearchable against: [:style_name]

  extend FriendlyId
  friendly_id :style_name, :use => :slugged
end
