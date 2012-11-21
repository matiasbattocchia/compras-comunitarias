require 'test_helper'

class LineBundlesControllerTest < ActionController::TestCase
  setup do
    @line_bundle = line_bundles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_bundles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_bundle" do
    assert_difference('LineBundle.count') do
      post :create, line_bundle: { quantity: @line_bundle.quantity }
    end

    assert_redirected_to line_bundle_path(assigns(:line_bundle))
  end

  test "should show line_bundle" do
    get :show, id: @line_bundle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_bundle
    assert_response :success
  end

  test "should update line_bundle" do
    put :update, id: @line_bundle, line_bundle: { quantity: @line_bundle.quantity }
    assert_redirected_to line_bundle_path(assigns(:line_bundle))
  end

  test "should destroy line_bundle" do
    assert_difference('LineBundle.count', -1) do
      delete :destroy, id: @line_bundle
    end

    assert_redirected_to line_bundles_path
  end
end
