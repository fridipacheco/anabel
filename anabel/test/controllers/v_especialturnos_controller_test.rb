require 'test_helper'

class VEspecialturnosControllerTest < ActionController::TestCase
  setup do
    @v_especialturno = v_especialturnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_especialturnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_especialturno" do
    assert_difference('VEspecialturno.count') do
      post :create, v_especialturno: {  }
    end

    assert_redirected_to v_especialturno_path(assigns(:v_especialturno))
  end

  test "should show v_especialturno" do
    get :show, id: @v_especialturno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_especialturno
    assert_response :success
  end

  test "should update v_especialturno" do
    patch :update, id: @v_especialturno, v_especialturno: {  }
    assert_redirected_to v_especialturno_path(assigns(:v_especialturno))
  end

  test "should destroy v_especialturno" do
    assert_difference('VEspecialturno.count', -1) do
      delete :destroy, id: @v_especialturno
    end

    assert_redirected_to v_especialturnos_path
  end
end
