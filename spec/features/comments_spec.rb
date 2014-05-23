require 'spec_helper'


feature "Publishing New Comment" do
  scenario "with contents" do

    visit comments_path
    click_on 'New'
    save_and_open_page
    fill_in :comment_contents, with: 'new comment'
    click_on 'Create Comment'

    expect(page).to have_content('successfully created')
  end
end

