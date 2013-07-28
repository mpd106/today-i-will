require 'test_helper'

class ListTests < ActiveSupport::TestCase
  def setup
    @list = FactoryGirl.create(:list)
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
end
