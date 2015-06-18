require 'test_helper'

class ExampsControllerTest < ActionController::TestCase
  setup do
    @examp = examps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:examps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create examp" do
    assert_difference('Examp.count') do
      post :create, examp: { name: @examp.name }
    end

    assert_redirected_to examp_path(assigns(:examp))
  end

  test "should show examp" do
    get :show, id: @examp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @examp
    assert_response :success
  end

  test "should update examp" do
    patch :update, id: @examp, examp: { name: @examp.name }
    assert_redirected_to examp_path(assigns(:examp))
  end

  test "should destroy examp" do
    assert_difference('Examp.count', -1) do
      delete :destroy, id: @examp
    end

    assert_redirected_to examps_path
  end
end
