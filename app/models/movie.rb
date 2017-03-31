class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director

  has_many   :castings,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :director_id, :presence => true

  validates :title, :presence => true

end
