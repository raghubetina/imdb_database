class Actor < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :castings,
             :dependent => :destroy

  # Indirect associations

  has_many   :filmography,
             :through => :castings,
             :source => :movie

  # Validations

  validates :name, :presence => true

end
