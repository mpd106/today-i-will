require 'test_helper'

class ThingTest < ActiveSupport::TestCase
  test 'has a valid factory' do
    thing = FactoryGirl.create(:thing)
    assert_instance_of(Thing, thing)
  end

  test 'has a description' do
    thing = FactoryGirl.create(:thing)
    assert_respond_to(thing, :description)
  end

  test 'has a done flag' do
    thing = FactoryGirl.create(:thing)
    assert_respond_to(thing, :done)
  end

  test 'is associated with a list' do
    thing = FactoryGirl.create(:thing)
    assert_respond_to(thing, :list)
  end
end
