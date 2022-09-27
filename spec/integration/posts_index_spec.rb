require 'rails_helper'

RSpec.describe 'Integeration test for index post view', type: :feature do
  describe 'Post' do
    before(:all) do
      @user = User.first!
    end

    it 'should display user profile picture' do
      visit(user_posts_path(@user.id))
      expect(page).to have_css('img[src*="https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1021&q=80"]')
    end

    it 'should display user profile picture' do
      visit(user_posts_path(@user.id))
      expect(page).to have_content('Ali Aqa Atayee')
    end
    it 'should display Post title' do
      visit(user_posts_path(@user.id))
      expect(page).to have_content('Create a full-body 3D avatar with a selfie and use it in the metaverse')
    end
    it 'should display Post content' do
      visit(user_posts_path(@user.id))
      expect(page).to have_content('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries')
    end
    it 'should display number of posts created by user' do
      visit(user_posts_path(@user.id))
      @post = @user.posts.all
      expect(@post.size).to eql(2)
    end
    it 'should display number of comments for the first post' do
      visit(user_posts_path(@user.id))
      @comment = @user.posts.first.comments
      expect(@comment.size).to eql(2)
    end
    it 'should redirect from first user posts index to create post page' do
      visit(user_posts_path(@user.id))
      click_link 'Create New Post'
      expect(page).to have_current_path new_user_post_path(@user.id)
    end
  end
end
