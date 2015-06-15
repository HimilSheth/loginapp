require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Hi", email: "hi@yahoo.co.in")
  end

  test "should be valid" do
    assert(@user.valid?, "User not valid")
  end

  test "user should have a name" do
    @user.name = " "
    assert !(@user.valid?)
  end

  test "email should be present" do
    @user.email = " "
    assert !(@user.email?)
  end
  # test "the truth" do
  #   assert true
  # end
end
