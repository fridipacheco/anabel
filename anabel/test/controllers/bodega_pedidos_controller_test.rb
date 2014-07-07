require 'test_helper'

class BodegaPedidosControllerTest < ActionController::TestCase
  setup do
    @bodega_pedido = bodega_pedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bodega_pedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bodega_pedido" do
    assert_difference('BodegaPedido.count') do
      post :create, bodega_pedido: {  }
    end

    assert_redirected_to bodega_pedido_path(assigns(:bodega_pedido))
  end

  test "should show bodega_pedido" do
    get :show, id: @bodega_pedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bodega_pedido
    assert_response :success
  end

  test "should update bodega_pedido" do
    patch :update, id: @bodega_pedido, bodega_pedido: {  }
    assert_redirected_to bodega_pedido_path(assigns(:bodega_pedido))
  end

  test "should destroy bodega_pedido" do
    assert_difference('BodegaPedido.count', -1) do
      delete :destroy, id: @bodega_pedido
    end

    assert_redirected_to bodega_pedidos_path
  end
end
