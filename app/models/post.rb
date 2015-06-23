class Post < ActiveRecord::Base
  attr_accessible :content, :user_id, :channel_id, :upvote
  validates :content, presence: true
  belongs_to :user
  belongs_to :channel
  has_many :comments
after_initialize :default_values

  private
    def default_values
      self.upvote ||= 0
    end
end
