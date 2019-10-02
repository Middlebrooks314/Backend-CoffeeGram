class Recipe < ApplicationRecord
    belongs_to :user
    has_many :favorites, dependent: :destroy

    def username
        self.user.username
    end
end
