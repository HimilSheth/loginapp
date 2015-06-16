require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Hi", email: "hi@yahoo.co.in", password: "pubbar123", password_confirmation: "pubbar123")
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
    assert !(@user.valid?)
  end

  test "email should not be too long" do
    @user.email = "a"*244 + "@example.com"
    assert !(@user.valid?)
  end

  test "name should not be long" do
  @user.name = "a" * 51
  assert !(@user.valid?)
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert !(@user.valid?), "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email address should be unique" do
    dup_user = @user.clone
    @user.save
    assert(!(dup_user.valid?))
  end
  # test "the truth" do
  #   assert true
  # end
end
