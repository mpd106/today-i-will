require 'test_helper'

class ListTests < ActiveSupport::TestCase
  test 'has a valid factory' do
    list = FactoryGirl.create(:list)
    assert_instance_of(List, list)
  end

  test 'has a date' do
    list = FactoryGirl.create(:list)
    assert_respond_to(list, :date)
  end

  test 'belongs to a user' do
    list = FactoryGirl.create(:list)
    assert_respond_to(list, :user)
  end
end
