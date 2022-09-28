require 'rails_helper'

RSpec.describe 'Integeration test for show post view', type: :feature do
  describe 'Post' do
    before(:each) do
      @user = User.first!
    end

    it 'I can see who wrote the post.' do
      visit(user_post_path(@user.id, @user.posts.first.id))
      expect(page).to have_content('Ali Aqa Atayee')
    end

    it 'I can see how many comments it has.' do
      visit(user_post_path(@user.id, @user.posts.first.id))
      @comment = @user.posts.first.comments
      expect(@comment.size).to eql(2)
    end

    it 'I can see how many likes it has.' do
      visit(user_post_path(@user.id, @user.posts.first.id))
      @post = @user.posts.first
      expect(page).to have_content(@post.likes_counter)
    end

    it 'I can see the post title.' do
      visit(user_posts_path(@user.id))
      expect(page).to have_content('Create a full-body 3D avatar with a selfie and use it in the metaverse')
    end
    it 'I can see the post body.' do
      visit(user_posts_path(@user.id))
      expect(page).to have_content('Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
    end

    it 'I can see the username of each commentor.' do
      visit(user_post_path(@user.id, @user.posts.first.id))
      @comment = @user.posts.first.comments.first
      expect(page).to have_content(@comment.author.name)
    end

    it 'I can see the comment each commentor left.' do
      visit(user_post_path(@user.id, @user.posts.first.id))
      @comment = @user.posts.first.comments.first
      expect(page).to have_content(@comment.text)
    end
  end
end
