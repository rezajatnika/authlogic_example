require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  def setup
    @article = Fabricate.build(:article)
  end

  test 'should be valid' do
    assert @article.valid?
  end

  test 'should not be valid without title' do
    @article.title = ''
    assert_not @article.valid?
  end

  test 'should not be valid without content' do
    @article.content = ''
    assert_not @article.valid?
  end

  test 'should belongs to a user' do
    assert @article.respond_to?(:user)
  end
end
