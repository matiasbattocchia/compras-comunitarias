require 'test_helper'

class FeedTablesControllerTest < ActionController::TestCase
  setup do
    @feed_table = feed_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feed_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feed_table" do
    assert_difference('FeedTable.count') do
      post :create, feed_table: { balance: @feed_table.balance, close_time: @feed_table.close_time, modality: @feed_table.modality, open_time: @feed_table.open_time, other_activities: @feed_table.other_activities, sale_address: @feed_table.sale_address, unload_address: @feed_table.unload_address }
    end

    assert_redirected_to feed_table_path(assigns(:feed_table))
  end

  test "should show feed_table" do
    get :show, id: @feed_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feed_table
    assert_response :success
  end

  test "should update feed_table" do
    put :update, id: @feed_table, feed_table: { balance: @feed_table.balance, close_time: @feed_table.close_time, modality: @feed_table.modality, open_time: @feed_table.open_time, other_activities: @feed_table.other_activities, sale_address: @feed_table.sale_address, unload_address: @feed_table.unload_address }
    assert_redirected_to feed_table_path(assigns(:feed_table))
  end

  test "should destroy feed_table" do
    assert_difference('FeedTable.count', -1) do
      delete :destroy, id: @feed_table
    end

    assert_redirected_to feed_tables_path
  end
end
