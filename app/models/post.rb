class Post < ApplicationRecord
    validates_presence_of :title, :content, :user_id
    has_many :comments, dependent: :destroy
    belongs_to :user
    has_rich_text :content
end
