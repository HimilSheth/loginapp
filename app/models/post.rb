class Post < ActiveRecord::Base
  attr_accessible :content, :user_id, :channel_id, :upvote
  validates :content, presence: true
  validates_presence_of :user_id
  validates_presence_of :channel_id
  belongs_to :user
  belongs_to :channel
  has_many :comments
  has_many :upvoted_users, through: :votes, source: :user
  has_many :votes, dependent: :destroy
  after_initialize :default_values

  def self.upvote_post_by_one(post,current_user)
    if post.votes.create(user_id: current_user.id)
      post.upvote += 1
      post.save
    end
  end

  def self.create_associations(current_user,post,channel)
    current_user.posts << post
    channel.posts << post
    channel.users << current_user
    post.save
  end

  private
  def default_values
    self.upvote ||= 0
  end
end
