require 'test_helper'

class TrabajadorSeccionsControllerTest < ActionController::TestCase
  setup do
    @trabajador_seccion = trabajador_seccions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trabajador_seccions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trabajador_seccion" do
    assert_difference('TrabajadorSeccion.count') do
      post :create, trabajador_seccion: { trs_fechafin: @trabajador_seccion.trs_fechafin, trs_fechaini: @trabajador_seccion.trs_fechaini }
    end

    assert_redirected_to trabajador_seccion_path(assigns(:trabajador_seccion))
  end

  test "should show trabajador_seccion" do
    get :show, id: @trabajador_seccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trabajador_seccion
    assert_response :success
  end

  test "should update trabajador_seccion" do
    patch :update, id: @trabajador_seccion, trabajador_seccion: { trs_fechafin: @trabajador_seccion.trs_fechafin, trs_fechaini: @trabajador_seccion.trs_fechaini }
    assert_redirected_to trabajador_seccion_path(assigns(:trabajador_seccion))
  end

  test "should destroy trabajador_seccion" do
    assert_difference('TrabajadorSeccion.count', -1) do
      delete :destroy, id: @trabajador_seccion
    end

    assert_redirected_to trabajador_seccions_path
  end
end
