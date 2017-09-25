class EvaluationHiringManagersController < ApplicationController

  before_action :set_evaluation_hiring_manager, only: [:show, :edit, :update, :destroy]
  before_action :set_user_and_admin, only: [:new]
  # GET /evaluation_hiring_managers
  # GET /evaluation_hiring_managers.json
  def index
    @evaluation_hiring_managers = EvaluationHiringManager.all
  end

  # GET /evaluation_hiring_managers/1
  # GET /evaluation_hiring_managers/1.json
  def show
  end

  # GET /evaluation_hiring_managers/new
  def new
    @evaluation_hiring_manager = EvaluationHiringManager.new

  end

  # GET /evaluation_hiring_managers/1/edit
  def edit
    @user = User.find(@evaluation_hiring_manager.user_id)
    @admin = User.find(@evaluation_hiring_manager.admin_id)
  end

  # POST /evaluation_hiring_managers
  # POST /evaluation_hiring_managers.json
  def create
    @evaluation_hiring_manager = EvaluationHiringManager.new(evaluation_hiring_manager_params)

    respond_to do |format|
      if @evaluation_hiring_manager.save
        format.html { redirect_to @evaluation_hiring_manager, notice: 'Evaluation hiring manager was successfully created.' }
        format.json { render :show, status: :created, location: @evaluation_hiring_manager }
      else
        @user = User.find(@evaluation.user_id)
        format.html { render :new }
        format.json { render json: @evaluation_hiring_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluation_hiring_managers/1
  # PATCH/PUT /evaluation_hiring_managers/1.json
  def update
    respond_to do |format|
      if @evaluation_hiring_manager.update(evaluation_hiring_manager_params)
        format.html { redirect_to @evaluation_hiring_manager, notice: 'Evaluation hiring manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluation_hiring_manager }
      else
        format.html { render :edit }
        format.json { render json: @evaluation_hiring_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluation_hiring_managers/1
  # DELETE /evaluation_hiring_managers/1.json
  def destroy

    @notifications = Notification.where(item_id:  @evaluation_hiring_manager.id) #destrir todas las notificaciones que sean de esta vacante
    if(@notifications)
      @notifications.destroy_all #destruye todas las notificaciones que tengan que ver con esta vacante
    end

    @evaluation_hiring_manager.destroy
    respond_to do |format|
      format.html { redirect_to evaluation_hiring_managers_url, notice: 'Evaluation hiring manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation_hiring_manager
      @evaluation_hiring_manager = EvaluationHiringManager.find(params[:id])
    end


    def set_user_and_admin
      @user = User.find(params[:userid])

      @admin = Admin.find(params[:adminid])
      
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_hiring_manager_params
      #params.fetch(:evaluation_hiring_manager, {})
      params.require(:evaluation_hiring_manager).permit(:learning_on_the_fly_select, :learning_on_the_fly_justification,:problem_solving_select , :problem_solving_justification, :customer_focus_select, :customer_focus_justification, :priority_setting_select, :priority_setting_justification, :personal_learning_select, :personal_learning_justification, :integrity_and_trust_select, :integrity_and_trust_justification, :entrepreneurship_select, :entrepreneurship_justification, :autonomy_select, :autonomy_justification, :accountability_select, :accountability_justification, :energy_select, :energy_justification, :respect_select, :respect_justification, :exemplarity_select, :exemplarity_justification, :assigned_project, :project_realization, :overall_performance, :future_position_option1, :future_position_option2, :future_position_option3, :mobility_of_intern_afer_assignment, :mobility_of_intern_afer_assignment_where, :aditional_comments, :i_recommend_this_candidate_for_inmediate, :i_recommend_him_why, :admin_id, :user_id, :name_hiring_manager)
    end
    
end
