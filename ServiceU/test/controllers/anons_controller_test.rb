require 'test_helper'

class AnonsControllerTest < ActionController::TestCase
  setup do
    @anon = anons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anon" do
    assert_difference('Anon.count') do
      post :create, anon: { body: @anon.body, title: @anon.title }
    end

    assert_redirected_to anon_path(assigns(:anon))
  end

  test "should show anon" do
    get :show, id: @anon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anon
    assert_response :success
  end

  test "should update anon" do
    patch :update, id: @anon, anon: { body: @anon.body, title: @anon.title }
    assert_redirected_to anon_path(assigns(:anon))
  end

  test "should destroy anon" do
    assert_difference('Anon.count', -1) do
      delete :destroy, id: @anon
    end

    assert_redirected_to anons_path
  end
end
