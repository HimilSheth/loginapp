class AddUpvoteToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :upvote, :integer
  end
end
