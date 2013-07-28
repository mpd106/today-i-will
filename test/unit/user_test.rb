require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'has a valid factory' do
    user = FactoryGirl.create :user
    assert_instance_of User, user
  end

  test 'has a name' do
    user = FactoryGirl.create :user
    assert_respond_to user, :name
  end

  test 'requires name' do
    user = FactoryGirl.create :user
    user.name = nil
    user.save
    assert_equal user.errors[:name], ["can't be blank"]

    user.name = 'Matt'
    result = user.save
    assert result
  end

  test 'has an email' do
    user = FactoryGirl.create :user
    assert_respond_to user, :email
  end

  test 'requires email' do
    user = FactoryGirl.create :user
    user.email = nil
    user.save
    assert_equal user.errors[:email].first, "can't be blank"

    user.email = 'matt@example.com'
    result = user.save
    assert result
  end

  test 'email cannot be invalid' do
    user = FactoryGirl.create :user
    user.email = 'invalid email'
    user.save
    assert_equal user.errors[:email], ["is not an email"]
  end

  test 'has lists' do
    user = FactoryGirl.create :user
    assert_respond_to user, :lists
  end
end
