class Style < ActiveRecord::Base
  include PgSearch
  has_many :beers
  pg_search_scope :search, against: [:style_name, :category_name], associated_against: { beers: [:name] }

  belongs_to :category

  extend FriendlyId

  friendly_id :style_name, :use => :slugged

end
