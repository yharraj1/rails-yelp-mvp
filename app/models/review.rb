class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }, :inclusion => { :in => 0..5, :message => " should be between 0 to 5", allow_nil: false }
  validates :restaurant, presence: true
end
