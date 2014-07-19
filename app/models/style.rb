class Style < ActiveRecord::Base
  include PgSearch

  multisearchable against: [:style_name, :category_name]
  pg_search_scope :search, against: [:style_name, :category_name], associated_against: { beers: [:name] }

  belongs_to :category
  has_many :beers

  extend FriendlyId

  friendly_id :style_name, :use => :slugged

end
