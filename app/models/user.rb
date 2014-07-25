class User < ActiveRecord::Base
  has_many :favorites

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: :true

  enum role: [:user, :admin]

  def favorited_beers
    favorites.collect { |f| f.favorable }
  end
end
