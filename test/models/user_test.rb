require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = Fabricate.build(:user)
  end

  test 'should be valid with valid user' do
    assert @user.valid?
  end

  test 'email should not be blank' do
    @user.email = ''
    assert_not @user.valid?
  end

  test 'login should not be blank' do
    @user.login = ''
    assert_not @user.valid?
  end

  test 'email should be in a valid format' do
    @user.email = 'user.email'
    assert_not @user.valid?
  end

  test 'user should have many articles' do
    assert @user.respond_to?(:articles)
  end
end
