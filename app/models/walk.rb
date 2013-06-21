class Walk < ActiveRecord::Base
  attr_accessible :name, :song_link, :walk_points_attributes
  has_many :walk_points
  accepts_nested_attributes_for :walk_points
  validates :name, presence: true
end
