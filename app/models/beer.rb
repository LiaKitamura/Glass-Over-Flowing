class Beer < ActiveRecord::Base
  belongs_to :style
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

  # friendly_id :name, :use => :scoped, :scope => :style

  validates :name, presence: true

end
