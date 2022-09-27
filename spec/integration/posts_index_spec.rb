require 'rails_helper'

RSpec.describe 'Integeration test for index post view', type: :feature do
  describe 'Post' do
    before(:all) do
      @user = User.first!
    end

    it 'I can see the users profile picture.' do
      visit(user_posts_path(@user.id))
      expect(page).to have_css('img[src*="https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1021&q=80"]')
    end

    it 'I can see the users username.' do
      visit(user_posts_path(@user.id))
      expect(page).to have_content('Ali Aqa Atayee')
    end

    it 'I can see the number of posts the user has written.' do
      visit(user_posts_path(@user.id))
      expect(page).to have_content(@user.posts_counter)
    end

    it 'I can see a posts title.' do
      visit(user_posts_path(@user.id))
      expect(page).to have_content('Create a full-body 3D avatar with a selfie and use it in the metaverse')
    end
    it 'I can see some of the posts body.' do
      visit(user_posts_path(@user.id))
      expect(page).to have_content('Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
    end

    it 'I can see how many comments a post has.' do
      visit(user_posts_path(@user.id))
      @comment = @user.posts.first.comments
      expect(@comment.size).to eql(2)
    end

    it 'I can see the first comments on a post.' do
      visit(user_posts_path(@user.id))
      @firstcomment = @user.posts.first.comments.first
      expect(page).to have_content(@firstcomment.text)
    end

    it 'I can see how many likes a post has.' do
      visit(user_posts_path(@user.id))
      @post = @user.posts.first
      expect(page).to have_content(@post.likes_counter)
    end
    it 'I can see a section for pagination if there are more posts than fit on the view.' do
      visit(user_posts_path(@user.id))
      expect(page).to have_content('Pagination')
    end

    it 'When I click on a post, it redirects me to that posts show page.' do
      visit(user_posts_path(@user.id))
      click_link 'Create a full-body 3D avatar with a selfie and use it in the metaverse'
      expect(page).to have_current_path user_post_path(@user.id, @user.posts.first.id)
    end
  end
end
