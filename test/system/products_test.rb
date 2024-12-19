require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  # Test to visit the products index page and check the header
  test "visiting the index" do
    visit products_url  # Visit the products index page
    assert_selector "h1", text: "Products"  # Assert that an H1 header with text "Products" is present
  end

  # Test to simulate creating a new product through the form
  test "creating a new product" do
    visit products_url  # Visit the products index page
    click_on "New Product"  # Click on the "New Product" button

    fill_in "Name", with: "Test Product"  # Fill in the name field with "Test Product"
    fill_in "Price", with: 100  # Fill in the price field with "100"
    click_on "Create Product"  # Click the "Create Product" button

    assert_text "Product was successfully created"  # Assert that a success message is displayed
  end
end
