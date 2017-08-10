class VacantesController < ApplicationController
  before_action :set_vacante, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new , :index ,:edit, :update, :destroy]

  # GET /vacantes
  # GET /vacantes.json
  def index
    #@vacantes = Vacante.all
    @vacantess = current_admin.vacantes.nuevos.paginate(page:params[:page], per_page:20)
    
  end

  # GET /vacantes/1
  # GET /vacantes/1.json
  def show
    @vacante_aplicada = VacanteAplicada.new
  end

  # GET /vacantes/new
  def new
    @vacante = Vacante.new
    @periodo_de_practica = ["Ene-Jun", "Jul-Dic", "Otro"]
  end

  # GET /vacantes/1/edit
  def edit
    @periodo_de_practica = ["Ene-Jun", "Jul-Dic", "Otro"]
  end

  # POST /vacantes
  # POST /vacantes.json
  def create
    @periodo_de_practica = ["Ene-Jun", "Jul-Dic", "Otro"]
    @vacante = current_admin.vacantes.new(vacante_params)

    respond_to do |format|
      if @vacante.save
        format.html { redirect_to @vacante, notice: 'Vacante was successfully created.' }
        format.json { render :show, status: :created, location: @vacante }
      else
        format.html { render :new }
        format.json { render json: @vacante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacantes/1
  # PATCH/PUT /vacantes/1.json
  def update
    respond_to do |format|
      if @vacante.update(vacante_params)
        format.html { redirect_to @vacante, notice: 'Vacante was successfully updated.' }
        format.json { render :show, status: :ok, location: @vacante }
      else
        format.html { render :edit }
        format.json { render json: @vacante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacantes/1
  # DELETE /vacantes/1.json
  def destroy
    @vacante.destroy
    respond_to do |format|
      format.html { redirect_to vacantes_url, notice: 'Vacante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacante
      @vacante = Vacante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacante_params
      params.require(:vacante).permit(:name, :area, :location, :little_description, :description, :missions_role, :occupied ,:periodo_de_practica, :Name_Hiring_Manager, :planta,  :job_area_id )
    end
end
