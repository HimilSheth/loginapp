class Comment < ActiveRecord::Base
  attr_accessible :description, :post_id
  validates :description, presence: true
  belongs_to :post
end
