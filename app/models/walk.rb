class Walk < ActiveRecord::Base
  attr_accessible :name, :song_link, :walk_points_attributes
  has_many :walk_points
  accepts_nested_attributes_for :walk_points
  validates :name, presence: true

  def has_song?
    song_link.present?
  end

  def youtube_code
    song_link.to_s.split('?v=').last
  end

end
