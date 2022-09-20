class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, foreign_key: 'post_id'
  has_many :likes, foreign_key: 'post_id'

  def self.post_counter(author_id)
    user = User.find(author_id)
    user.post_counter += 1
    user.save
  end

  def self.five_recent_comments(author_id, post_id)
    Comment.where(author_id, post_id).order(created_at: :desc).limit(5).all
  end
end
