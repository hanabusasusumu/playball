class Team < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :name, presence: true
  validates :city_id, presence: true
  validates :message, presence: true
  validates :representative, presence: true
  validates :email, presence: true
  validates :image, presence: true
end
