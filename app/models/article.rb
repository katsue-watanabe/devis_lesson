class Article < ApplicationRecord
  belongs_to :user
 
  validates :title, presence: true, length: { maximum: 10 }
  validates :content, presence: true

  # def user
  #   User.find(self.user_id)
  # end
end

