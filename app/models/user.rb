# @restful_api 1.0
#
# @property [String]  email email-id of the user
# @property [String]  name name of the user
# @property [String]  password password of the user
# @property [String]  pasword_confirmation confirm password of the user
#
#
# @example
#   ```json
#   {
#   "email": "himilsheth07@gmail.com",
#   "name": "himil",
#   "password": "himil",
#   "password_confirmation": himil
#   }
#   ```
# @author [himil]
#
class User < ActiveRecord::Base

  attr_accessible :email, :name, :password, :password_confirmation


  before_save {self.email = email.downcase}


  validates :name, presence: true, length: {maximum: 50}
  #validates the format for email_id
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


  #
  # Create user's data from Facebook Authentication Hash
  # @param auth [hash] Contains user's data received from facebook
  def self.from_omniauth(auth)
    create! do |user|
      user.email = auth["info"]["email"]
      user.name = auth["info"]["first_name"]
      user.password = auth.credentials.token
      user.password_confirmation = auth.credentials.token
    end
  end


  #
  # Authenticate's the user based on facebook id or new facebook user
  # @param auth [hash] Contains user's data received from facebook
  #
  # @return [User] It returns the user object
  def self.authenticate_through_facebook(auth)
    user = User.find_by_email(auth.info.email) || User.from_omniauth(auth)
  end

  #
  # Authenticate's the user based on our email_id and password
  # @param params [hash] Contains paramaters related to the Signed In User
  #
  # @return [boolean] Authenticated User or not
  def self.authenticate_by_password(params)
    user = User.find_by_email(params[:email].downcase)
    return (user && user.authenticate(params[:password]))
  end
end
