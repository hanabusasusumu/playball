class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :team

  validates :text, presence: true 
end
