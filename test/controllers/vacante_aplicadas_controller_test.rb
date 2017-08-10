require 'test_helper'

class VacanteAplicadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vacante_aplicada = vacante_aplicadas(:one)
  end

  test "should get index" do
    get vacante_aplicadas_url
    assert_response :success
  end

  test "should get new" do
    get new_vacante_aplicada_url
    assert_response :success
  end

  test "should create vacante_aplicada" do
    assert_difference('VacanteAplicada.count') do
      post vacante_aplicadas_url, params: { vacante_aplicada: {  } }
    end

    assert_redirected_to vacante_aplicada_url(VacanteAplicada.last)
  end

  test "should show vacante_aplicada" do
    get vacante_aplicada_url(@vacante_aplicada)
    assert_response :success
  end

  test "should get edit" do
    get edit_vacante_aplicada_url(@vacante_aplicada)
    assert_response :success
  end

  test "should update vacante_aplicada" do
    patch vacante_aplicada_url(@vacante_aplicada), params: { vacante_aplicada: {  } }
    assert_redirected_to vacante_aplicada_url(@vacante_aplicada)
  end

  test "should destroy vacante_aplicada" do
    assert_difference('VacanteAplicada.count', -1) do
      delete vacante_aplicada_url(@vacante_aplicada)
    end

    assert_redirected_to vacante_aplicadas_url
  end
end
