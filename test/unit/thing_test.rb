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

  test 'is invalid without a list' do
    thing = FactoryGirl.build(:thing)
    thing.list = nil
    assert !thing.valid?, "list is not being validated for presence"
  end

  test 'done is not writeable' do
    assert_raise NoMethodError do
      @thing.done = true
    end
  end

  test 'has a mark_done method' do
    assert_respond_to(@thing, :mark_done)
  end

  test 'is not done by default' do
    assert !@thing.done
  end

  test 'mark_done updates the done flag' do
    @thing.mark_done
    assert @thing.done
  end

  test 'done is persisted' do
    @thing.mark_done
    @thing.save
    thing = Thing.find(@thing)
    assert thing.done
  end

  test 'must have a description' do
    @thing.description = nil
    assert !@thing.valid?
  end

  test 'list is a list' do
    assert_kind_of List, @thing.list
  end
end
