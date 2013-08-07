require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = FactoryGirl.create :user
  end

  test 'has a valid factory' do
    assert_instance_of User, @user
  end

  test 'has a username' do
    assert_respond_to @user, :username
  end

  test 'requires username' do
    @user.username = nil
    assert_presence @user, :username
  end

  test 'username must be unique' do
    another_user = FactoryGirl.build :user
    assert !another_user.valid?
  end

  test 'has a name' do
    assert_respond_to @user, :name
  end

  test 'requires name' do
    @user.name = nil
    assert_presence @user, :name
  end

  test 'has an email' do
    assert_respond_to @user, :email
  end

  test 'requires email' do
    @user.email = nil
    assert_presence @user, :email
  end

  test 'email cannot be invalid' do
    @user.email = 'invalid email'
    @user.valid?
    assert_equal @user.errors[:email], ["is not an email"]
  end

  test 'has lists' do
    assert_respond_to @user, :lists
  end

  test 'supports mass assignment of email and name' do
    assert_nothing_raised do
      user = User.new name: "name", email: "matt@example.com"
    end
  end
end
