require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be presence" do
    @user.name = "    "
    # false でなければならない
    assert_not @user.valid?
  end

  test "email should be presence" do
    @user.email = "    "
    # false でなければならない
    assert_not @user.valid?
  end
end
