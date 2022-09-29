class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'
  after_initialize :set_defaults
  validates :name, presence: true
  validates :posts_counter, comparison: { greater_than_or_equal_to: 0 }, numericality: true

  def three_recent_posts
    posts.limit(3).order(created_at: :desc)
  end

  private

  def set_defaults
    self.posts_counter ||= 0
  end
end
