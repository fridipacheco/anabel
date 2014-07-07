require 'test_helper'

class AsistenciaComprasControllerTest < ActionController::TestCase
  setup do
    @asistencia_compra = asistencia_compras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asistencia_compras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asistencia_compra" do
    assert_difference('AsistenciaCompra.count') do
      post :create, asistencia_compra: { asc_comision: @asistencia_compra.asc_comision, asc_fecha: @asistencia_compra.asc_fecha }
    end

    assert_redirected_to asistencia_compra_path(assigns(:asistencia_compra))
  end

  test "should show asistencia_compra" do
    get :show, id: @asistencia_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asistencia_compra
    assert_response :success
  end

  test "should update asistencia_compra" do
    patch :update, id: @asistencia_compra, asistencia_compra: { asc_comision: @asistencia_compra.asc_comision, asc_fecha: @asistencia_compra.asc_fecha }
    assert_redirected_to asistencia_compra_path(assigns(:asistencia_compra))
  end

  test "should destroy asistencia_compra" do
    assert_difference('AsistenciaCompra.count', -1) do
      delete :destroy, id: @asistencia_compra
    end

    assert_redirected_to asistencia_compras_path
  end
end
