class Style < ActiveRecord::Base
  belongs_to :category
  has_many :beers

  include PgSearch
  multisearchable against: [:style_name]

  extend FriendlyId
  friendly_id :style_name, :use => :slugged
end
