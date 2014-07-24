class User < ActiveRecord::Base
  has_many :favorites

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :admin]

  # validates :name, :role, presence: :true

  def favorited_beers
    favorites.collect { |f| f.favorable }
  end
end
