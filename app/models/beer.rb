class Beer < ActiveRecord::Base
  has_many :favorites, as: :favorable

  validates :style, :name, presence: true
end
