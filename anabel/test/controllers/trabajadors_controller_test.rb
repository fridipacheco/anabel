require 'test_helper'

class TrabajadorsControllerTest < ActionController::TestCase
  setup do
    @trabajador = trabajadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trabajadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trabajador" do
    assert_difference('Trabajador.count') do
      post :create, trabajador: { tra_apellidom: @trabajador.tra_apellidom, tra_apellidop: @trabajador.tra_apellidop, tra_direccion: @trabajador.tra_direccion, tra_email: @trabajador.tra_email, tra_nacimiento: @trabajador.tra_nacimiento, tra_nombre: @trabajador.tra_nombre, tra_numero: @trabajador.tra_numero, tra_rut: @trabajador.tra_rut, tra_sexo: @trabajador.tra_sexo, tra_telefono: @trabajador.tra_telefono }
    end

    assert_redirected_to trabajador_path(assigns(:trabajador))
  end

  test "should show trabajador" do
    get :show, id: @trabajador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trabajador
    assert_response :success
  end

  test "should update trabajador" do
    patch :update, id: @trabajador, trabajador: { tra_apellidom: @trabajador.tra_apellidom, tra_apellidop: @trabajador.tra_apellidop, tra_direccion: @trabajador.tra_direccion, tra_email: @trabajador.tra_email, tra_nacimiento: @trabajador.tra_nacimiento, tra_nombre: @trabajador.tra_nombre, tra_numero: @trabajador.tra_numero, tra_rut: @trabajador.tra_rut, tra_sexo: @trabajador.tra_sexo, tra_telefono: @trabajador.tra_telefono }
    assert_redirected_to trabajador_path(assigns(:trabajador))
  end

  test "should destroy trabajador" do
    assert_difference('Trabajador.count', -1) do
      delete :destroy, id: @trabajador
    end

    assert_redirected_to trabajadors_path
  end
end
