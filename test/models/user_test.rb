# test/models/user_test.rb
require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not save user without email" do
    user = User.new
    assert_not user.save, "Saved the user without an email"
  end

  test "should save user with email and password" do
    user = User.new(email: "test@mail.com", password: "password123", first_name: "Ahmad", last_name: "Bourhan")
    assert user.save, "Failed to save the user with an email and password"
  end
end

