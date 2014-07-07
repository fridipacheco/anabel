require 'test_helper'

class PagoComprasControllerTest < ActionController::TestCase
  setup do
    @pago_compra = pago_compras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pago_compras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pago_compra" do
    assert_difference('PagoCompra.count') do
      post :create, pago_compra: { pag_cuota: @pago_compra.pag_cuota, pag_estado: @pago_compra.pag_estado, pag_fecha: @pago_compra.pag_fecha, pag_monto: @pago_compra.pag_monto, pag_venc: @pago_compra.pag_venc }
    end

    assert_redirected_to pago_compra_path(assigns(:pago_compra))
  end

  test "should show pago_compra" do
    get :show, id: @pago_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pago_compra
    assert_response :success
  end

  test "should update pago_compra" do
    patch :update, id: @pago_compra, pago_compra: { pag_cuota: @pago_compra.pag_cuota, pag_estado: @pago_compra.pag_estado, pag_fecha: @pago_compra.pag_fecha, pag_monto: @pago_compra.pag_monto, pag_venc: @pago_compra.pag_venc }
    assert_redirected_to pago_compra_path(assigns(:pago_compra))
  end

  test "should destroy pago_compra" do
    assert_difference('PagoCompra.count', -1) do
      delete :destroy, id: @pago_compra
    end

    assert_redirected_to pago_compras_path
  end
end
