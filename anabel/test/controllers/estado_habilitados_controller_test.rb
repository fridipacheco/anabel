require 'test_helper'

class EstadoHabilitadosControllerTest < ActionController::TestCase
  setup do
    @estado_habilitado = estado_habilitados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_habilitados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_habilitado" do
    assert_difference('EstadoHabilitado.count') do
      post :create, estado_habilitado: { esh_descripcion: @estado_habilitado.esh_descripcion }
    end

    assert_redirected_to estado_habilitado_path(assigns(:estado_habilitado))
  end

  test "should show estado_habilitado" do
    get :show, id: @estado_habilitado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_habilitado
    assert_response :success
  end

  test "should update estado_habilitado" do
    patch :update, id: @estado_habilitado, estado_habilitado: { esh_descripcion: @estado_habilitado.esh_descripcion }
    assert_redirected_to estado_habilitado_path(assigns(:estado_habilitado))
  end

  test "should destroy estado_habilitado" do
    assert_difference('EstadoHabilitado.count', -1) do
      delete :destroy, id: @estado_habilitado
    end

    assert_redirected_to estado_habilitados_path
  end
end
