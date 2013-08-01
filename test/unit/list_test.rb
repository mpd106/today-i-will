require 'test_helper'

class ListTests < ActiveSupport::TestCase
  def setup
    @list = FactoryGirl.build(:list)
  end

  test 'has a valid factory' do
    assert_instance_of(List, @list)
  end

  test 'has a date' do
    assert_respond_to(@list, :date)
  end

  test 'belongs to a user' do
    assert_respond_to(@list, :user)
  end

  test 'is invalid without a user' do
    @list.user = nil
    assert !@list.valid?, "list is not being validated for presence"
  end

  test 'is invalid without a date' do
    @list.date = nil
    assert !@list.valid?, "list is not being validated for presence"
  end
end
