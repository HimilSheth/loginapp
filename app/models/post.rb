class Post < ActiveRecord::Base
  attr_accessible :content, :user_id, :channel_id
  validates :content, presence: true
  belongs_to :user
  belongs_to :channel
  has_many :comments
end
