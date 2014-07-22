class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :favorites, as: :favorable

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
     [
       :name,
       [:name, :resource_id],
       [:name, :resource_id, :brewery_id]
     ]
   end
   
  belongs_to :style
  # friendly_id :name, :use => :scoped, :scope => :style

  validates :name, presence: true

end

  # update would stop for lack of unique names. to prevent this did a slug candidates method
  # did something like so :



# update db in terminal to have friendlyId with Beer.find_each(&save)
# then returned friendly_id to have name and use style scope so it would work in the browser
