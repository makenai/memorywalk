class Walk < ActiveRecord::Base
  attr_accessible :name, :song_link
  has_many :walk_points
end
