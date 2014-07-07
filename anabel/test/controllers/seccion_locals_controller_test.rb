require 'test_helper'

class SeccionLocalsControllerTest < ActionController::TestCase
  setup do
    @seccion_local = seccion_locals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seccion_locals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seccion_local" do
    assert_difference('SeccionLocal.count') do
      post :create, seccion_local: {  }
    end

    assert_redirected_to seccion_local_path(assigns(:seccion_local))
  end

  test "should show seccion_local" do
    get :show, id: @seccion_local
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seccion_local
    assert_response :success
  end

  test "should update seccion_local" do
    patch :update, id: @seccion_local, seccion_local: {  }
    assert_redirected_to seccion_local_path(assigns(:seccion_local))
  end

  test "should destroy seccion_local" do
    assert_difference('SeccionLocal.count', -1) do
      delete :destroy, id: @seccion_local
    end

    assert_redirected_to seccion_locals_path
  end
end
