class Like < ApplicationRecord
  belongs_to :post, class_name: 'Post'
  belongs_to :author, class_name: 'User'
  after_save :update_likes_counter
  def update_likes_counter
    post.increment!(:likes_counter)
  end
end
