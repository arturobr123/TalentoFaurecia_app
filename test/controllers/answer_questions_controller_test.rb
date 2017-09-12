require 'test_helper'

class AnswerQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @answer_question = answer_questions(:one)
  end

  test "should get index" do
    get answer_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_answer_question_url
    assert_response :success
  end

  test "should create answer_question" do
    assert_difference('AnswerQuestion.count') do
      post answer_questions_url, params: { answer_question: { respuesta: @answer_question.respuesta, user_id: @answer_question.user_id } }
    end

    assert_redirected_to answer_question_url(AnswerQuestion.last)
  end

  test "should show answer_question" do
    get answer_question_url(@answer_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_answer_question_url(@answer_question)
    assert_response :success
  end

  test "should update answer_question" do
    patch answer_question_url(@answer_question), params: { answer_question: { respuesta: @answer_question.respuesta, user_id: @answer_question.user_id } }
    assert_redirected_to answer_question_url(@answer_question)
  end

  test "should destroy answer_question" do
    assert_difference('AnswerQuestion.count', -1) do
      delete answer_question_url(@answer_question)
    end

    assert_redirected_to answer_questions_url
  end
end
