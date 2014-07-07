require 'test_helper'

class LocalPedidosControllerTest < ActionController::TestCase
  setup do
    @local_pedido = local_pedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:local_pedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create local_pedido" do
    assert_difference('LocalPedido.count') do
      post :create, local_pedido: {  }
    end

    assert_redirected_to local_pedido_path(assigns(:local_pedido))
  end

  test "should show local_pedido" do
    get :show, id: @local_pedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @local_pedido
    assert_response :success
  end

  test "should update local_pedido" do
    patch :update, id: @local_pedido, local_pedido: {  }
    assert_redirected_to local_pedido_path(assigns(:local_pedido))
  end

  test "should destroy local_pedido" do
    assert_difference('LocalPedido.count', -1) do
      delete :destroy, id: @local_pedido
    end

    assert_redirected_to local_pedidos_path
  end
end
