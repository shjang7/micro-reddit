require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @user = users(:sam)
    @post = Post.new(title: "Title", content: "Example content", user_id: @user.id)
  end

  test "should be valid" do
    assert @post.valid?
  end

  test "title should be present" do
    @post.title = "     "
    assert_not @post.valid?
  end

  test "content should be present" do
    @post.content = "     "
    assert_not @post.valid?
  end
end
