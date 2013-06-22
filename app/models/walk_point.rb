class WalkPoint < ActiveRecord::Base
  attr_accessible :location, :lat, :long, :walk_id, :label
  belongs_to :walk
  attr_accessor :label
  validates :lat, presence: true
  validates :long, presence: true


  def to_s
    "#{lat},#{long}"
  end

end
