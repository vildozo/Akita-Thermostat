require 'test_helper'

class ObservacionsControllerTest < ActionController::TestCase
  setup do
    @observacion = observacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:observacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create observacion" do
    assert_difference('Observacion.count') do
      post :create, observacion: { description: @observacion.description, thermostat_id: @observacion.thermostat_id }
    end

    assert_redirected_to observacion_path(assigns(:observacion))
  end

  test "should show observacion" do
    get :show, id: @observacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @observacion
    assert_response :success
  end

  test "should update observacion" do
    patch :update, id: @observacion, observacion: { description: @observacion.description, thermostat_id: @observacion.thermostat_id }
    assert_redirected_to observacion_path(assigns(:observacion))
  end

  test "should destroy observacion" do
    assert_difference('Observacion.count', -1) do
      delete :destroy, id: @observacion
    end

    assert_redirected_to observacions_path
  end
end
