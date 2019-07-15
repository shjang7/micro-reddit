require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @user = users(:sam)
    @post = posts(:one)
    @comment = Comment.new(content: "some comment", post_id: @post.id, user_id: @user.id)
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "Content field should be present" do
    @comment.content = "     "
    assert_not @comment.valid?
  end
end
