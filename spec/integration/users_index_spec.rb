require 'rails_helper'

RSpec.describe 'Integeration test for index user view', type: :feature do
  describe 'User' do
    before(:all) do
      @users = User.limit(10)
    end

    it 'should display all the names' do
      visit(users_path)

      @users.each do |user|
        expect(page).to have_content(user.name)
      end
    end

    it 'should display all the profile pictures' do
      visit(users_path)

      @users.each do |user|
        expect(page).to have_css("img[src*=\"#{user.photo}\"]")
      end
    end

    it 'should display the correct number of posts for each user' do
      visit(users_path)

      @users.each do |user|
        expect(page).to have_content("Number of posts: #{user.posts_counter}")
      end
    end
  end
end
