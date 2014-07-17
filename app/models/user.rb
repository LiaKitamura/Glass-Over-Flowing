class User < ActiveRecord::Base
  has_many :favorites, as: :favorable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  enum role: [:user, :admin]

  validates :name, :role, presence: :true

  def show_favorites(beer)
    User.favorites.first.favorable
  end


end
