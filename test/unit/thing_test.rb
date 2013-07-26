require 'test_helper'

class ThingTest < ActiveSupport::TestCase
  test 'has a valid factory' do
    FactoryGirl.create(:thing).should be_valid
  end

  test 'has a description' do
    assert false
  end

  test 'has a done flag' do
    assert false
  end

  test 'is associated with a list' do
    assert false
  end
end
