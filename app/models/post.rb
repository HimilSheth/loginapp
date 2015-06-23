class Post < ActiveRecord::Base
  attr_accessible :content, :user_id, :channel_id, :upvote
  validates :content, presence: true
  belongs_to :user
  belongs_to :channel
  has_many :comments
  has_many :upvoted_users, through: :votes, source: :user
  has_many :votes, dependent: :destroy
after_initialize :default_values

  private
    def default_values
      self.upvote ||= 0
    end
end
