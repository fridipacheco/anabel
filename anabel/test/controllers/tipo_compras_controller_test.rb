require 'test_helper'

class TipoComprasControllerTest < ActionController::TestCase
  setup do
    @tipo_compra = tipo_compras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_compras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_compra" do
    assert_difference('TipoCompra.count') do
      post :create, tipo_compra: { tco_descripcion: @tipo_compra.tco_descripcion }
    end

    assert_redirected_to tipo_compra_path(assigns(:tipo_compra))
  end

  test "should show tipo_compra" do
    get :show, id: @tipo_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_compra
    assert_response :success
  end

  test "should update tipo_compra" do
    patch :update, id: @tipo_compra, tipo_compra: { tco_descripcion: @tipo_compra.tco_descripcion }
    assert_redirected_to tipo_compra_path(assigns(:tipo_compra))
  end

  test "should destroy tipo_compra" do
    assert_difference('TipoCompra.count', -1) do
      delete :destroy, id: @tipo_compra
    end

    assert_redirected_to tipo_compras_path
  end
end
