require 'spec_helper'

describe "Posts" do

  before(:each) do
    @user = FactoryGirl.create(:user)
  end

  describe "Publishing New Blog Post" do
    it "allows me to publish new blog post" do
      login_as(@user, :scope => :user)
      visit posts_path
      click_on 'New Post'
      fill_in :post_title, with: 'NEW POST'
      fill_in :post_contents, with: 'abc'
      click_on 'Create Post'

      expect(page).to have_content('ActiveRuby Trivandrum')
    end
  end
end
