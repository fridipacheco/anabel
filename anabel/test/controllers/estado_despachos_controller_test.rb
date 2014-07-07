require 'test_helper'

class EstadoDespachosControllerTest < ActionController::TestCase
  setup do
    @estado_despacho = estado_despachos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_despachos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_despacho" do
    assert_difference('EstadoDespacho.count') do
      post :create, estado_despacho: { ede_descripcion: @estado_despacho.ede_descripcion }
    end

    assert_redirected_to estado_despacho_path(assigns(:estado_despacho))
  end

  test "should show estado_despacho" do
    get :show, id: @estado_despacho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_despacho
    assert_response :success
  end

  test "should update estado_despacho" do
    patch :update, id: @estado_despacho, estado_despacho: { ede_descripcion: @estado_despacho.ede_descripcion }
    assert_redirected_to estado_despacho_path(assigns(:estado_despacho))
  end

  test "should destroy estado_despacho" do
    assert_difference('EstadoDespacho.count', -1) do
      delete :destroy, id: @estado_despacho
    end

    assert_redirected_to estado_despachos_path
  end
end
