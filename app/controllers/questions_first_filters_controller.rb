class QuestionsFirstFiltersController < ApplicationController
  before_action :set_questions_first_filter, only: [:show, :edit, :update, :destroy]

  # GET /questions_first_filters
  # GET /questions_first_filters.json
  def index
    @questions_first_filters = QuestionsFirstFilter.all
  end

  # GET /questions_first_filters/1
  # GET /questions_first_filters/1.json
  def show
  end

  # GET /questions_first_filters/new
  def new
    @questions_first_filter = QuestionsFirstFilter.new
  end

  # GET /questions_first_filters/1/edit
  def edit
  end

  # POST /questions_first_filters
  # POST /questions_first_filters.json
  def create
    @questions_first_filter = QuestionsFirstFilter.new(questions_first_filter_params)

    respond_to do |format|
      if @questions_first_filter.save
        format.html { redirect_to @questions_first_filter, notice: 'Questions first filter was successfully created.' }
        format.json { render :show, status: :created, location: @questions_first_filter }
      else
        format.html { render :new }
        format.json { render json: @questions_first_filter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions_first_filters/1
  # PATCH/PUT /questions_first_filters/1.json
  def update
    respond_to do |format|
      if @questions_first_filter.update(questions_first_filter_params)
        format.html { redirect_to @questions_first_filter, notice: 'Questions first filter was successfully updated.' }
        format.json { render :show, status: :ok, location: @questions_first_filter }
      else
        format.html { render :edit }
        format.json { render json: @questions_first_filter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions_first_filters/1
  # DELETE /questions_first_filters/1.json
  def destroy
    @questions_first_filter.destroy
    respond_to do |format|
      format.html { redirect_to questions_first_filters_url, notice: 'Questions first filter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questions_first_filter
      @questions_first_filter = QuestionsFirstFilter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questions_first_filter_params
      params.require(:questions_first_filter).permit(:pregunta, :respuesta1, :respuesta2, :respuesta3, :respuesta4, :respuesta_correcta)
    end
end
