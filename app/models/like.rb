class Like < ApplicationRecord
  belongs_to :post, class_name: 'Post'
  belongs_to :author, class_name: 'User'

  def self.update_likes_counter(post_id)
    post = Post.find(post_id)
    post.likes_counter += 1
    post.save
  end
end
