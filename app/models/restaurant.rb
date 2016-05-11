class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, :inclusion => ["chinese", "italian", "japanese", "french", "belgian"]
end
