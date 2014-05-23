require 'spec_helper'

describe "Comments" do
  describe "Publishing New Blog Post" do
    it "allows me to publish new blog post" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit comments_path
      click_on 'New'
      fill_in :comment_contents, with: 'abc'
      click_on 'Create Comment'

      expect(page).to have_content('successfully created')
    end
  end
end
