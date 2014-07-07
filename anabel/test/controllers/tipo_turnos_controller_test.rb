require 'test_helper'

class TipoTurnosControllerTest < ActionController::TestCase
  setup do
    @tipo_turno = tipo_turnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_turnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_turno" do
    assert_difference('TipoTurno.count') do
      post :create, tipo_turno: { ttu_descripcio: @tipo_turno.ttu_descripcio }
    end

    assert_redirected_to tipo_turno_path(assigns(:tipo_turno))
  end

  test "should show tipo_turno" do
    get :show, id: @tipo_turno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_turno
    assert_response :success
  end

  test "should update tipo_turno" do
    patch :update, id: @tipo_turno, tipo_turno: { ttu_descripcio: @tipo_turno.ttu_descripcio }
    assert_redirected_to tipo_turno_path(assigns(:tipo_turno))
  end

  test "should destroy tipo_turno" do
    assert_difference('TipoTurno.count', -1) do
      delete :destroy, id: @tipo_turno
    end

    assert_redirected_to tipo_turnos_path
  end
end
