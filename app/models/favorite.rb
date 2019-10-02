class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  has_many :favorites
  validates :recipe_id, :user_id, presence: true
  
end
