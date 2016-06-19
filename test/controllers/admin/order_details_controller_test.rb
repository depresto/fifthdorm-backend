require 'test_helper'

class Admin::OrderDetailsControllerTest < ActionController::TestCase
  setup do
    @admin_order_detail = admin_order_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_order_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_order_detail" do
    assert_difference('Admin::OrderDetail.count') do
      post :create, admin_order_detail: {  }
    end

    assert_redirected_to admin_order_detail_path(assigns(:admin_order_detail))
  end

  test "should show admin_order_detail" do
    get :show, id: @admin_order_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_order_detail
    assert_response :success
  end

  test "should update admin_order_detail" do
    patch :update, id: @admin_order_detail, admin_order_detail: {  }
    assert_redirected_to admin_order_detail_path(assigns(:admin_order_detail))
  end

  test "should destroy admin_order_detail" do
    assert_difference('Admin::OrderDetail.count', -1) do
      delete :destroy, id: @admin_order_detail
    end

    assert_redirected_to admin_order_details_path
  end
end
