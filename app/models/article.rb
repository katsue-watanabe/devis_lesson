class Article < ApplicationRecord
  belongs_to :user
 
  validates :title, presence: true, length: { maximum: 10 }
  validates :content, presence: true

  def articles
    Article.where(article_id: self.id)
  end
end

