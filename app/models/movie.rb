class Movie < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  belongs_to :director

  has_many   :castings,
             :dependent => :destroy

  # Indirect associations

  has_many   :cast,
             :through => :castings,
             :source => :actor

  # Validations

  validates :director_id, :presence => true

  validates :title, :presence => true

end
