require 'rails_helper'

RSpec.describe PostsController, :type => :controller do

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "Votes increases to 1" do
      @post = Post.create!(content: "Testing")
      @user = User.create(name: "himil", email: "himil@g.com", password: "himil", password_confirmation: "himil")
      get :update
      expect(@post.upvote).to eq 1
    end
  end

end
