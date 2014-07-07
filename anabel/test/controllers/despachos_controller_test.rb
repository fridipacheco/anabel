require 'test_helper'

class DespachosControllerTest < ActionController::TestCase
  setup do
    @despacho = despachos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:despachos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create despacho" do
    assert_difference('Despacho.count') do
      post :create, despacho: { desp_fecha: @despacho.desp_fecha }
    end

    assert_redirected_to despacho_path(assigns(:despacho))
  end

  test "should show despacho" do
    get :show, id: @despacho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @despacho
    assert_response :success
  end

  test "should update despacho" do
    patch :update, id: @despacho, despacho: { desp_fecha: @despacho.desp_fecha }
    assert_redirected_to despacho_path(assigns(:despacho))
  end

  test "should destroy despacho" do
    assert_difference('Despacho.count', -1) do
      delete :destroy, id: @despacho
    end

    assert_redirected_to despachos_path
  end
end
