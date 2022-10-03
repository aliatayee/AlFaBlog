class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, foreign_key: 'post_id'
  has_many :likes, foreign_key: 'post_id'

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, :likes_counter, comparison: { greater_than_or_equal_to: 0 }, numericality: true

  after_save :increase_user_posts_count
  after_destroy :decrease_user_posts_count

  def five_recent_comments
    comments.last(5)
  end

  private

  def increase_user_posts_count
    author.increment!(:posts_counter)
  end
  def decrease_user_posts_count
    author.decrement!(:posts_counter)
  end
end
