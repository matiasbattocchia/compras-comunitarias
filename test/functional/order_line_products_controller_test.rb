require 'test_helper'

class OrderLineProductsControllerTest < ActionController::TestCase
  setup do
    @order_line_product = order_line_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_line_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_line_product" do
    assert_difference('OrderLineProduct.count') do
      post :create, order_line_product: { quantity: @order_line_product.quantity }
    end

    assert_redirected_to order_line_product_path(assigns(:order_line_product))
  end

  test "should show order_line_product" do
    get :show, id: @order_line_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_line_product
    assert_response :success
  end

  test "should update order_line_product" do
    put :update, id: @order_line_product, order_line_product: { quantity: @order_line_product.quantity }
    assert_redirected_to order_line_product_path(assigns(:order_line_product))
  end

  test "should destroy order_line_product" do
    assert_difference('OrderLineProduct.count', -1) do
      delete :destroy, id: @order_line_product
    end

    assert_redirected_to order_line_products_path
  end
end
