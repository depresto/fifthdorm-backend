require 'test_helper'

class Admin::CuisinesControllerTest < ActionController::TestCase
  setup do
    @admin_cuisine = admin_cuisines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_cuisines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_cuisine" do
    assert_difference('Admin::Cuisine.count') do
      post :create, admin_cuisine: {  }
    end

    assert_redirected_to admin_cuisine_path(assigns(:admin_cuisine))
  end

  test "should show admin_cuisine" do
    get :show, id: @admin_cuisine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_cuisine
    assert_response :success
  end

  test "should update admin_cuisine" do
    patch :update, id: @admin_cuisine, admin_cuisine: {  }
    assert_redirected_to admin_cuisine_path(assigns(:admin_cuisine))
  end

  test "should destroy admin_cuisine" do
    assert_difference('Admin::Cuisine.count', -1) do
      delete :destroy, id: @admin_cuisine
    end

    assert_redirected_to admin_cuisines_path
  end
end
