require 'test_helper'

class CargoTrabajadorsControllerTest < ActionController::TestCase
  setup do
    @cargo_trabajador = cargo_trabajadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cargo_trabajadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cargo_trabajador" do
    assert_difference('CargoTrabajador.count') do
      post :create, cargo_trabajador: { cat_alta: @cargo_trabajador.cat_alta, cat_baja: @cargo_trabajador.cat_baja, cat_base: @cargo_trabajador.cat_base, cat_permiso: @cargo_trabajador.cat_permiso, cat_porcentaje: @cargo_trabajador.cat_porcentaje }
    end

    assert_redirected_to cargo_trabajador_path(assigns(:cargo_trabajador))
  end

  test "should show cargo_trabajador" do
    get :show, id: @cargo_trabajador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cargo_trabajador
    assert_response :success
  end

  test "should update cargo_trabajador" do
    patch :update, id: @cargo_trabajador, cargo_trabajador: { cat_alta: @cargo_trabajador.cat_alta, cat_baja: @cargo_trabajador.cat_baja, cat_base: @cargo_trabajador.cat_base, cat_permiso: @cargo_trabajador.cat_permiso, cat_porcentaje: @cargo_trabajador.cat_porcentaje }
    assert_redirected_to cargo_trabajador_path(assigns(:cargo_trabajador))
  end

  test "should destroy cargo_trabajador" do
    assert_difference('CargoTrabajador.count', -1) do
      delete :destroy, id: @cargo_trabajador
    end

    assert_redirected_to cargo_trabajadors_path
  end
end
