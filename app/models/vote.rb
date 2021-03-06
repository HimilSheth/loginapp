#
# [class description]
#
# @author [himil]
#
class Vote < ActiveRecord::Base
  attr_accessible :user_id, :post_id
  belongs_to :user
  belongs_to :post
  validates_uniqueness_of :post_id, scope: :user_id
end
