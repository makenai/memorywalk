class WalkPoint < ActiveRecord::Base
  attr_accessible :description, :lat, :lon, :walk_id
  belongs_to :walk
end
