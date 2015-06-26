
#
# [class description]
#
# @author [himil]
#
class Channel < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name, on: :create, message: "can't be blank"
  validates_uniqueness_of :name, :on => :create, :message => "must be unique"
  has_many :posts
  has_and_belongs_to_many :users

  #
  #
  # @param current_user [type] [description]
  # @param channel [type] [description]
  #
  # @return [type] [description]
  def self.get_user_posts(current_user, channel)
    return current_user.posts.where(:channel_id => channel.id)
  end
end
