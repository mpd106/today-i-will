require 'test_helper'

class ThingTest < ActiveSupport::TestCase
  def setup
    @thing = FactoryGirl.create(:thing)
  end

  test 'has a valid factory' do
    assert_instance_of(Thing, @thing)
  end

  test 'has a description' do
    assert_respond_to(@thing, :description)
  end

  test 'has a done flag' do
    assert_respond_to(@thing, :done)
  end

  test 'is associated with a list' do
    assert_respond_to(@thing, :list)
  end
end
