class Beer < ActiveRecord::Base
  belongs_to :style
  belongs_to :brewery
  has_many :favorites, as: :favorable

  # validates :name, :user_id, presence: true

  include PgSearch
  multisearchable against: [:name, :abv]

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      :name,
      [:name, :resource_id],
      [:name, :resource_id, :brewery_id]
    ]
  end
end
# update db in terminal to have friendlyId with Beer.find_each(&save)
# then returned friendly_id to have name and use style scope so it would work in the browser
