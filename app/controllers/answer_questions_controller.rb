class AnswerQuestionsController < ApplicationController
  before_action :set_answer_question, only: [:show, :edit, :update, :destroy]

  # GET /answer_questions
  # GET /answer_questions.json
  def index
    @answer_questions = AnswerQuestion.all.nuevos
  end

  # GET /answer_questions/1
  # GET /answer_questions/1.json
  def show
  end

  # GET /answer_questions/new
  def new
    @answer_question = AnswerQuestion.new
  end

  # GET /answer_questions/1/edit
  def edit
  end

  # POST /answer_questions
  # POST /answer_questions.json
  def create
    @answer_question = AnswerQuestion.new(answer_question_params)

    respond_to do |format|
      if @answer_question.save
        format.html { redirect_to @answer_question, notice: 'Answer question was successfully created.' }
        format.json { render :show, status: :created, location: @answer_question }
      else
        format.html { render :new }
        format.json { render json: @answer_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_questions/1
  # PATCH/PUT /answer_questions/1.json
  def update
    respond_to do |format|
      if @answer_question.update(answer_question_params)
        format.html { redirect_to @answer_question, notice: 'Answer question was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer_question }
      else
        format.html { render :edit }
        format.json { render json: @answer_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_questions/1
  # DELETE /answer_questions/1.json
  def destroy
    @answer_question.destroy
    respond_to do |format|
      format.html { redirect_to answer_questions_url, notice: 'Answer question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_question
      @answer_question = AnswerQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_question_params
      params.require(:answer_question).permit(:respuesta, :user_id , :questions_first_filter_id)
    end
end
