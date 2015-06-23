
#
# [class description]
#
# @author [himil]
#
class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  before_save {self.email = email.downcase}
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    length: {maximum: 255},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}
  has_secure_password
  has_and_belongs_to_many :channels
  has_many :posts
  has_many :votes, dependent: :destroy
  has_many :upvoted_posts, through: :votes, source: :post

  def self.from_omniauth(auth)
    #byebug
    create! do |user|
      user.email = auth["info"]["email"]
      user.name = auth["info"]["first_name"]
      user.password = auth.credentials.token
      user.password_confirmation = auth.credentials.token
    end
  end
end
