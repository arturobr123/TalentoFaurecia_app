require 'test_helper'

class QuestionsFirstFiltersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questions_first_filter = questions_first_filters(:one)
  end

  test "should get index" do
    get questions_first_filters_url
    assert_response :success
  end

  test "should get new" do
    get new_questions_first_filter_url
    assert_response :success
  end

  test "should create questions_first_filter" do
    assert_difference('QuestionsFirstFilter.count') do
      post questions_first_filters_url, params: { questions_first_filter: { pregunta: @questions_first_filter.pregunta, respuesta1: @questions_first_filter.respuesta1, respuesta2: @questions_first_filter.respuesta2, respuesta3: @questions_first_filter.respuesta3, respuesta4: @questions_first_filter.respuesta4, respuesta_correcta: @questions_first_filter.respuesta_correcta } }
    end

    assert_redirected_to questions_first_filter_url(QuestionsFirstFilter.last)
  end

  test "should show questions_first_filter" do
    get questions_first_filter_url(@questions_first_filter)
    assert_response :success
  end

  test "should get edit" do
    get edit_questions_first_filter_url(@questions_first_filter)
    assert_response :success
  end

  test "should update questions_first_filter" do
    patch questions_first_filter_url(@questions_first_filter), params: { questions_first_filter: { pregunta: @questions_first_filter.pregunta, respuesta1: @questions_first_filter.respuesta1, respuesta2: @questions_first_filter.respuesta2, respuesta3: @questions_first_filter.respuesta3, respuesta4: @questions_first_filter.respuesta4, respuesta_correcta: @questions_first_filter.respuesta_correcta } }
    assert_redirected_to questions_first_filter_url(@questions_first_filter)
  end

  test "should destroy questions_first_filter" do
    assert_difference('QuestionsFirstFilter.count', -1) do
      delete questions_first_filter_url(@questions_first_filter)
    end

    assert_redirected_to questions_first_filters_url
  end
end
