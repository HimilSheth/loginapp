class Channel < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name, on: :create, message: "can't be blank"
  has_many :posts
  has_and_belongs_to_many :users
end
