class Comment < ActiveRecord::Base
  attr_accessible :description, :post_id
  validates :description, presence: true
  belongs_to :post
  validates_presence_of :post_id

  def self.create_associations(post,comment)
    post.comments << comment
    comment.save
  end
end
