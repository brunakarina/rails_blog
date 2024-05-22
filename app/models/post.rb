class Post < ApplicationRecord
    validates_presence_of :title, :content, :user_id
    has_many :comments, dependent: :destroy
    belongs_to :user
end
