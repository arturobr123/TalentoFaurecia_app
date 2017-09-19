class EvaluationsController < ApplicationController
  before_action :set_evaluation, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:new]
  before_action :authenticate_admin! , only: [:new]

  # GET /evaluations
  # GET /evaluations.json
  def index
    @evaluations = Evaluation.all.nuevos.paginate(page:params[:page], per_page:20)
    #@evaluations = current_admin.evaluations.nuevos.paginate(page:params[:page], per_page:20)
  end

  # GET /evaluations/1
  # GET /evaluations/1.json
  def show
  end

  # GET /evaluations/new
  def new
    @evaluation = Evaluation.new

    @user = User.find(params[:userid])
    @admin = current_admin


  end

  # GET /evaluations/1/edit
  def edit
    @user = User.find(@evaluation.user_id)
    @admin = Admin.find(@evaluation.admin_id)
  end

  # POST /evaluations
  # POST /evaluations.json
  def create
    @evaluation = Evaluation.new(evaluation_params)

    respond_to do |format|
      if @evaluation.save
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @evaluation }
      else
        @user = User.find(@evaluation.user_id)
        format.html { render :new }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluations/1
  # PATCH/PUT /evaluations/1.json
  def update
    respond_to do |format|
      if @evaluation.update(evaluation_params)
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluation }
      else
        format.html { render :edit }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluations/1
  # DELETE /evaluations/1.json
  def destroy
    @evaluation.destroy
    respond_to do |format|
      format.html { redirect_to evaluations_url, notice: 'Evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

    def set_user
      @user = User.find(params[:userid])

      if(@user.university.nil? and @user.carrer.nil?)
        redirect_to root_path,notice:"No se puede evaluar, el usuario no ha completado su información"
      else
        return true
        
      end
      
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_params
      params.require(:evaluation).permit(:admin_id, :comments, :user_id, :candidato_potencial, :english_level, :technical_skills, :duration_training, :rank_global_candidate, :assessment)
    end
end
