require 'test_helper'

class EvaluationHiringManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluation_hiring_manager = evaluation_hiring_managers(:one)
  end

  test "should get index" do
    get evaluation_hiring_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluation_hiring_manager_url
    assert_response :success
  end

  test "should create evaluation_hiring_manager" do
    assert_difference('EvaluationHiringManager.count') do
      post evaluation_hiring_managers_url, params: { evaluation_hiring_manager: {  } }
    end

    assert_redirected_to evaluation_hiring_manager_url(EvaluationHiringManager.last)
  end

  test "should show evaluation_hiring_manager" do
    get evaluation_hiring_manager_url(@evaluation_hiring_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluation_hiring_manager_url(@evaluation_hiring_manager)
    assert_response :success
  end

  test "should update evaluation_hiring_manager" do
    patch evaluation_hiring_manager_url(@evaluation_hiring_manager), params: { evaluation_hiring_manager: {  } }
    assert_redirected_to evaluation_hiring_manager_url(@evaluation_hiring_manager)
  end

  test "should destroy evaluation_hiring_manager" do
    assert_difference('EvaluationHiringManager.count', -1) do
      delete evaluation_hiring_manager_url(@evaluation_hiring_manager)
    end

    assert_redirected_to evaluation_hiring_managers_url
  end
end
