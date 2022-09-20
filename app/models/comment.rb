class Comment < ApplicationRecord
  belongs_to :post, class_name: 'Post'
  belongs_to :author, class_name: 'User'

  after_save :update_comments_counter
  def update_comments_counter(post_id)
    post = Post.find(post_id)
    post.update(comments_counter: post.comments.count)
  end
end
