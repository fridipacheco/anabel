require 'test_helper'

class TipoTrabajadorsControllerTest < ActionController::TestCase
  setup do
    @tipo_trabajador = tipo_trabajadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_trabajadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_trabajador" do
    assert_difference('TipoTrabajador.count') do
      post :create, tipo_trabajador: { tpt_descripcion: @tipo_trabajador.tpt_descripcion }
    end

    assert_redirected_to tipo_trabajador_path(assigns(:tipo_trabajador))
  end

  test "should show tipo_trabajador" do
    get :show, id: @tipo_trabajador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_trabajador
    assert_response :success
  end

  test "should update tipo_trabajador" do
    patch :update, id: @tipo_trabajador, tipo_trabajador: { tpt_descripcion: @tipo_trabajador.tpt_descripcion }
    assert_redirected_to tipo_trabajador_path(assigns(:tipo_trabajador))
  end

  test "should destroy tipo_trabajador" do
    assert_difference('TipoTrabajador.count', -1) do
      delete :destroy, id: @tipo_trabajador
    end

    assert_redirected_to tipo_trabajadors_path
  end
end
