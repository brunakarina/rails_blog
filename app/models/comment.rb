class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  broadcasts_to :post
  validates_presence_of :content, :user_id

end
