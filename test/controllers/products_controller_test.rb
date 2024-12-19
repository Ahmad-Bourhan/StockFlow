require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)  # assuming you have a fixture called :one in users.yml
    sign_in @user
  end

  test "should create product" do
    assert_difference('Product.count', 1) do
      post products_url, params: { product: { name: 'New Product', description: 'Product description', price: 10, stock: 5 } }
    end
    assert_redirected_to product_url(Product.last)
  end
end
