class Beer < ActiveRecord::Base

  validates :style, :name, presence: true
end
