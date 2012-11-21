require 'test_helper'

class BundlesControllerTest < ActionController::TestCase
  setup do
    @bundle = bundles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bundles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bundle" do
    assert_difference('Bundle.count') do
      post :create, bundle: { cost: @bundle.cost, crate_cost: @bundle.crate_cost, price: @bundle.price, product: @bundle.product, size: @bundle.size, status: @bundle.status, weight: @bundle.weight, with_freight_cost: @bundle.with_freight_cost }
    end

    assert_redirected_to bundle_path(assigns(:bundle))
  end

  test "should show bundle" do
    get :show, id: @bundle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bundle
    assert_response :success
  end

  test "should update bundle" do
    put :update, id: @bundle, bundle: { cost: @bundle.cost, crate_cost: @bundle.crate_cost, price: @bundle.price, product: @bundle.product, size: @bundle.size, status: @bundle.status, weight: @bundle.weight, with_freight_cost: @bundle.with_freight_cost }
    assert_redirected_to bundle_path(assigns(:bundle))
  end

  test "should destroy bundle" do
    assert_difference('Bundle.count', -1) do
      delete :destroy, id: @bundle
    end

    assert_redirected_to bundles_path
  end
end
