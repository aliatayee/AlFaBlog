require 'rails_helper'

RSpec.describe 'Integeration test for show post view', type: :feature do
  describe 'Post' do
    before(:each) do
      @user = User.first!
    end

    it 'Should display post owner name' do
      visit(user_post_path(@user.id, @user.posts.first.id))
      expect(page).to have_content('Ali Aqa Atayee')
    end

    it 'should display number of comments for the first post' do
      visit(user_post_path(@user.id, @user.posts.first.id))
      @comment = @user.posts.first.comments
      expect(@comment.size).to eql(2)
    end

    it 'should display number of likes' do
      visit(user_post_path(@user.id, @user.posts.first.id))
      @post = @user.posts.first
      expect(page).to have_content(@post.likes_counter)
    end

    it 'should display Post title' do
      visit(user_posts_path(@user.id))
      expect(page).to have_content('Create a full-body 3D avatar with a selfie and use it in the metaverse')
    end
    it 'should display Post content' do
      visit(user_posts_path(@user.id))
      expect(page).to have_content('Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
    end

    it 'Should display the user name of each commentor' do
      visit(user_post_path(@user.id, @user.posts.first.id))
      @comment = @user.posts.first.comments.first
      expect(page).to have_content(@comment.author.name)
    end
  end
end
