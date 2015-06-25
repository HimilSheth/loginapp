require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "has nothing to start with" do
    expect(Post.count).to eq 0
  end
  it "has one after adding one" do
    Post.create(content: "test")
    expect(Post.count).to eq 1
  end

  it "has none after one was created in a previous example" do
    expect(Post.count).to eq 0
  end
end
