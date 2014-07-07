require 'test_helper'

class BodegasControllerTest < ActionController::TestCase
  setup do
    @bodega = bodegas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bodegas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bodega" do
    assert_difference('Bodega.count') do
      post :create, bodega: { bod_direccion: @bodega.bod_direccion, bod_mail: @bodega.bod_mail, bod_numero: @bodega.bod_numero, bod_rs: @bodega.bod_rs, bod_rut: @bodega.bod_rut, bod_telefono: @bodega.bod_telefono }
    end

    assert_redirected_to bodega_path(assigns(:bodega))
  end

  test "should show bodega" do
    get :show, id: @bodega
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bodega
    assert_response :success
  end

  test "should update bodega" do
    patch :update, id: @bodega, bodega: { bod_direccion: @bodega.bod_direccion, bod_mail: @bodega.bod_mail, bod_numero: @bodega.bod_numero, bod_rs: @bodega.bod_rs, bod_rut: @bodega.bod_rut, bod_telefono: @bodega.bod_telefono }
    assert_redirected_to bodega_path(assigns(:bodega))
  end

  test "should destroy bodega" do
    assert_difference('Bodega.count', -1) do
      delete :destroy, id: @bodega
    end

    assert_redirected_to bodegas_path
  end
end
