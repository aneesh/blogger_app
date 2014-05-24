require 'spec_helper'

describe PostsController do

  before(:each) do
    user = FactoryGirl.create(:user)
    sign_in(user)
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "POST 'create'" do

    it "redirects to the home page upon save" do
      blogpost = FactoryGirl.attributes_for(:post)
      post :create, post: blogpost
      expect(response).to redirect_to root_url
    end

  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "populates an array of all contacts" do
      post1 = FactoryGirl.create(:post, title: 'Welcome Post')
      post2 = FactoryGirl.create(:post, title: 'Second Post')
      get :index
      expect(assigns(:posts)).to match_array([post1, post2])
    end
  end

end
