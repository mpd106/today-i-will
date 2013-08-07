require 'test_helper'

class UsernameValidatorTest < ActiveSupport::TestCase
  def setup
    @validator = UsernameValidator.new(attributes: {})
    @mock = mock('model')
  end

  test 'validates valid username' do
    should_pass_validation 'mpd'
  end

  test 'invalidates short username' do
    should_fail_validation 'm'
  end

  test 'invalidates all numeric username' do
    should_fail_validation '123456'
  end

  test 'invalidates invalid characters' do
    should_fail_validation 'hello world'
  end

  test 'two characters passes' do
    should_pass_validation 'mp'
  end

  def should_pass_validation(username)
    @mock.expects(:errors).never
    @validator.validate_each @mock, 'username', username
  end
  
  def should_fail_validation(username)
    @mock.expects(:errors).returns(ActiveModel::Errors.new(@mock)).once
    @validator.validate_each @mock, 'username', username
  end
end
