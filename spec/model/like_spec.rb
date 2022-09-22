require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'Tests like model' do
    user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
    post = Post.create(author: user, title: 'Hello', text: 'This is my first post')
    subject { Like.new }
    before { subject.save }

    it 'Test comments_counter' do
      post.likes_counter = 3
      subject.post = post
      expect(subject.post.likes_counter).to eq 3
    end
  end
end
