require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "has nothing to start with" do
    expect(Post.count).to eq 0
  end
  it "has one after adding one" do
    Post.create(content: "test", user_id: 1, channel_id: 1)
    expect(Post.count).to eq 1
  end
end
