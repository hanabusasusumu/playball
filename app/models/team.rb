class Team < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :city

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image

  validates :name, presence: true
  validates :city_id, numericality: { other_than: 1 }
  validates :message, presence: true
  validates :representative, presence: true
  validates :email, presence: true
  validates :image, presence: true
end
