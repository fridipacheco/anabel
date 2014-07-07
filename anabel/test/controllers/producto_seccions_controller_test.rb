require 'test_helper'

class ProductoSeccionsControllerTest < ActionController::TestCase
  setup do
    @producto_seccion = producto_seccions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_seccions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_seccion" do
    assert_difference('ProductoSeccion.count') do
      post :create, producto_seccion: { prs_cant: @producto_seccion.prs_cant, prs_fecha: @producto_seccion.prs_fecha, prs_preciouni: @producto_seccion.prs_preciouni }
    end

    assert_redirected_to producto_seccion_path(assigns(:producto_seccion))
  end

  test "should show producto_seccion" do
    get :show, id: @producto_seccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_seccion
    assert_response :success
  end

  test "should update producto_seccion" do
    patch :update, id: @producto_seccion, producto_seccion: { prs_cant: @producto_seccion.prs_cant, prs_fecha: @producto_seccion.prs_fecha, prs_preciouni: @producto_seccion.prs_preciouni }
    assert_redirected_to producto_seccion_path(assigns(:producto_seccion))
  end

  test "should destroy producto_seccion" do
    assert_difference('ProductoSeccion.count', -1) do
      delete :destroy, id: @producto_seccion
    end

    assert_redirected_to producto_seccions_path
  end
end
