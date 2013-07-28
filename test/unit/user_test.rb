require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = FactoryGirl.create :user
  end

  def assert_presence(model, field)
    assert_match /can't be blank/, model.errors[field].join
  end

  test 'has a valid factory' do
    assert_instance_of User, @user
  end

  test 'has a name' do
    assert_respond_to @user, :name
  end

  test 'requires name' do
    @user.name = nil
    @user.valid?
    assert_presence @user, :name
  end

  test 'has an email' do
    assert_respond_to @user, :email
  end

  test 'requires email' do
    @user.email = nil
    @user.valid?
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
end
