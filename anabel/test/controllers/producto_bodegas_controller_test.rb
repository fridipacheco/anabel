require 'test_helper'

class ProductoBodegasControllerTest < ActionController::TestCase
  setup do
    @producto_bodega = producto_bodegas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_bodegas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_bodega" do
    assert_difference('ProductoBodega.count') do
      post :create, producto_bodega: { prb_cant: @producto_bodega.prb_cant, prb_fecha: @producto_bodega.prb_fecha, prb_preciouni: @producto_bodega.prb_preciouni }
    end

    assert_redirected_to producto_bodega_path(assigns(:producto_bodega))
  end

  test "should show producto_bodega" do
    get :show, id: @producto_bodega
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_bodega
    assert_response :success
  end

  test "should update producto_bodega" do
    patch :update, id: @producto_bodega, producto_bodega: { prb_cant: @producto_bodega.prb_cant, prb_fecha: @producto_bodega.prb_fecha, prb_preciouni: @producto_bodega.prb_preciouni }
    assert_redirected_to producto_bodega_path(assigns(:producto_bodega))
  end

  test "should destroy producto_bodega" do
    assert_difference('ProductoBodega.count', -1) do
      delete :destroy, id: @producto_bodega
    end

    assert_redirected_to producto_bodegas_path
  end
end
