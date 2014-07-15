class Beer < ActiveRecord::Base
  belongs_to :style
  has_many :favorites, as: :favorable

  validates  :name, :ABV, presence: true

end
