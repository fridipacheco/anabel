require 'test_helper'

class ProveedorsControllerTest < ActionController::TestCase
  setup do
    @proveedor = proveedors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proveedors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proveedor" do
    assert_difference('Proveedor.count') do
      post :create, proveedor: { prov_apellidom: @proveedor.prov_apellidom, prov_apellidop: @proveedor.prov_apellidop, prov_direccion: @proveedor.prov_direccion, prov_email: @proveedor.prov_email, prov_nombre: @proveedor.prov_nombre, prov_numero: @proveedor.prov_numero, prov_rut: @proveedor.prov_rut, prov_telefono: @proveedor.prov_telefono }
    end

    assert_redirected_to proveedor_path(assigns(:proveedor))
  end

  test "should show proveedor" do
    get :show, id: @proveedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proveedor
    assert_response :success
  end

  test "should update proveedor" do
    patch :update, id: @proveedor, proveedor: { prov_apellidom: @proveedor.prov_apellidom, prov_apellidop: @proveedor.prov_apellidop, prov_direccion: @proveedor.prov_direccion, prov_email: @proveedor.prov_email, prov_nombre: @proveedor.prov_nombre, prov_numero: @proveedor.prov_numero, prov_rut: @proveedor.prov_rut, prov_telefono: @proveedor.prov_telefono }
    assert_redirected_to proveedor_path(assigns(:proveedor))
  end

  test "should destroy proveedor" do
    assert_difference('Proveedor.count', -1) do
      delete :destroy, id: @proveedor
    end

    assert_redirected_to proveedors_path
  end
end
