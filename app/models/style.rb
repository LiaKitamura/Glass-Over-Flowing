class Style < ActiveRecord::Base
  belongs_to :category
  has_many :beers

  extend FriendlyId

  friendly_id :style_name, :use => :slugged

end
