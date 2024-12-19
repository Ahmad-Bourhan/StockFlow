# test/controllers/home_controller_test.rb
require 'test_helper'


class HomeControllerTest < ActionDispatch::IntegrationTest
  # Test that the root path loads correctly
  include Devise::Test::IntegrationHelpers
  test "should get index" do
    get root_url  # This assumes you have 'root to: "home#index"' in your routes
    assert_response :success  # Check if the response is successful (status 200)
    assert_select "h1", "Welcome to StockFlow"  # Check if the page contains the H1 header with "Welcome to StockFlow"
  end

  # Example of a test for another page (e.g., about page)
  test "should get about page" do
    get about_url  # Assuming you have a page at /about
    assert_response :success  # Check if the response is successful (status 200)
    assert_select "h1", "About Us"  # Check if the page contains the H1 header with "About Us"
  end

  # Test user redirection (if users are required to sign in)
  test "should redirect to login if not logged in" do
    get dashboard_url  # Assuming a restricted page (requires user login)
    assert_redirected_to new_user_session_url  # Check if the user is redirected to the login page
  end
end
