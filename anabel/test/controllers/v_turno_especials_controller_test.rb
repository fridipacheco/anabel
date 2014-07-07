require 'test_helper'

class VTurnoEspecialsControllerTest < ActionController::TestCase
  setup do
    @v_turno_especial = v_turno_especials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_turno_especials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_turno_especial" do
    assert_difference('VTurnoEspecial.count') do
      post :create, v_turno_especial: {  }
    end

    assert_redirected_to v_turno_especial_path(assigns(:v_turno_especial))
  end

  test "should show v_turno_especial" do
    get :show, id: @v_turno_especial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_turno_especial
    assert_response :success
  end

  test "should update v_turno_especial" do
    patch :update, id: @v_turno_especial, v_turno_especial: {  }
    assert_redirected_to v_turno_especial_path(assigns(:v_turno_especial))
  end

  test "should destroy v_turno_especial" do
    assert_difference('VTurnoEspecial.count', -1) do
      delete :destroy, id: @v_turno_especial
    end

    assert_redirected_to v_turno_especials_path
  end
end
