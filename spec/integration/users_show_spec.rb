require 'rails_helper'

RSpec.describe 'Integeration test for index user view', type: :feature do
  describe 'User' do
    before(:all) do
      @user = User.first
    end

    it 'should display the name' do
      visit(user_path(@user.id))

      expect(page).to have_content(@user.name)
    end

    it 'should display the profile picture' do
      visit(user_path(@user.id))

      expect(page).to have_css("img[src*=\"#{@user.photo}\"]")
    end

    it 'should display the correct number of posts' do
      visit(user_path(@user.id))

      expect(page).to have_content("Total Posts: #{@user.posts_counter}")
    end

    it 'should display the bio' do
      visit(user_path(@user.id))

      expect(page).to have_text(@user.bio.delete("\t\r\n").squish)
    end

    it 'should have a link to create a new post' do
      visit(user_path(@user.id))

      expect(page).to have_link('Create New Post', href: new_user_post_path(@user.id))
    end

    it 'should display the last three posts' do
      visit(user_path(@user.id))

      @user.three_recent_posts.each do |post|
        expect(page).to have_text(post.title)
        expect(page).to have_text(post.text.delete("\t\r\n").squish)
        expect(page).to have_link(href: user_post_path(@user.id, post.id))
      end
    end

    it 'should have a link to see all the posts' do
      visit(user_path(@user.id))

      expect(page).to have_link('See All Posts', href: user_posts_path(@user))
    end
  end
end
