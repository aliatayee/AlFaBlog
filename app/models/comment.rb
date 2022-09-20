class Comment < ApplicationRecord
  belongs_to :post, class_name: 'Post'
  belongs_to :author, class_name: 'User'

  def self.update_comments_counter(post_id)
    post = Post.find(post_id)
    post.comments_counter += 1
    post.save
  end
end
