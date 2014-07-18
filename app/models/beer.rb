class Beer < ActiveRecord::Base
  belongs_to :style
  has_many :favorites, as: :favorable

  extend FriendlyId

  belongs_to :style
  friendly_id :name, :use => :scoped, :scope => :style

  validates :name, :ABV, presence: true

end

  # update would stop for lack of unique names. to prevent this did a slug candidates method
  # did something like so :

  # friendly_id :slug_candidates, use: :slugged

  # def slug_candidates
  #    [
  #      :name,
  #      [:name, :city],
  #      [:name, :street, :city],
  #      [:name, :street_number, :street, :city]
  #    ]
  #  end

# update db in terminal to have friendlyId with Beer.find_each(&save)
# then returned friendly_id to have name and use style scope so it would work in the browser
