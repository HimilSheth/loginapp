require 'rails_helper'

RSpec.describe PostsController, :type => :controller do


  before(:each) do
    @user = FactoryGirl.create(:user)
    @post = FactoryGirl.create(:post)
    @channel = FactoryGirl.create(:channel)
  end

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "User can upvote a post just once" do
    it "increases the upvotes by 1" do
      debugger
      Post.upvote_post_by_one(@post,@user)
      expect(@post.upvote).to eq 1
    end

    it "Votes remains the same" do
      Post.upvote_post_by_one(@post,@user)
      expect(@post.upvote).to eq 1
    end
  end
end
