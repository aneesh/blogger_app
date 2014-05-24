

require 'spec_helper'

describe Post do
  it "should not be saved without a title" do
    post = Post.new
    expect(post.save).to be_false

  end
end





