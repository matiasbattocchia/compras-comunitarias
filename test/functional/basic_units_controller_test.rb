require 'test_helper'

class BasicUnitsControllerTest < ActionController::TestCase
  setup do
    @basic_unit = basic_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basic_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basic_unit" do
    assert_difference('BasicUnit.count') do
      post :create, basic_unit: { address: @basic_unit.address, commune: @basic_unit.commune, name: @basic_unit.name, neighborhood: @basic_unit.neighborhood }
    end

    assert_redirected_to basic_unit_path(assigns(:basic_unit))
  end

  test "should show basic_unit" do
    get :show, id: @basic_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basic_unit
    assert_response :success
  end

  test "should update basic_unit" do
    put :update, id: @basic_unit, basic_unit: { address: @basic_unit.address, commune: @basic_unit.commune, name: @basic_unit.name, neighborhood: @basic_unit.neighborhood }
    assert_redirected_to basic_unit_path(assigns(:basic_unit))
  end

  test "should destroy basic_unit" do
    assert_difference('BasicUnit.count', -1) do
      delete :destroy, id: @basic_unit
    end

    assert_redirected_to basic_units_path
  end
end
