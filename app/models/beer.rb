class Beer < ActiveRecord::Base
  has_many :favorites, as: :favorable

  validates :category, :style, :name, :brewed_by, presence: true
  
end
