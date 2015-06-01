require 'test_helper'

class GovservsControllerTest < ActionController::TestCase
  setup do
    @govserv = govservs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:govservs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create govserv" do
    assert_difference('Govserv.count') do
      post :create, govserv: { service: @govserv.service }
    end

    assert_redirected_to govserv_path(assigns(:govserv))
  end

  test "should show govserv" do
    get :show, id: @govserv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @govserv
    assert_response :success
  end

  test "should update govserv" do
    patch :update, id: @govserv, govserv: { service: @govserv.service }
    assert_redirected_to govserv_path(assigns(:govserv))
  end

  test "should destroy govserv" do
    assert_difference('Govserv.count', -1) do
      delete :destroy, id: @govserv
    end

    assert_redirected_to govservs_path
  end
end
