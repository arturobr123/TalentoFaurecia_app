class VacanteAplicadasController < ApplicationController

  before_action :set_vacante_aplicada, only: [:show, :edit, :update, :destroy]

  # GET /vacante_aplicadas
  # GET /vacante_aplicadas.json
  def index
    
    #@vacante_aplicadas = VacanteAplicada.all.nuevos

    @id_vacantes_current_admin = current_admin.vacantes.all.ids

    @vacante_aplicadas = VacanteAplicada.where(:vacante_id =>@id_vacantes_current_admin).nuevos.paginate(page:params[:page], per_page:20)
  end

  # GET /vacante_aplicadas/1
  # GET /vacante_aplicadas/1.json
  def show
  end

  # GET /vacante_aplicadas/new
  def new
    @vacante_aplicada = VacanteAplicada.new
  end

  # GET /vacante_aplicadas/1/edit
  def edit
    #@usuario = User.find(params[:idUsario])    #esto no estaba, borrar si se regresa a lo anterior
  end

  # POST /vacante_aplicadas
  # POST /vacante_aplicadas.json


  def create
    @vacante_aplicada = VacanteAplicada.new(vacante_aplicada_params)

    respond_to do |format|
      if @vacante_aplicada.save
        format.html { redirect_to @vacante_aplicada, notice: 'Vacante aplicada was successfully created.' }
        format.json { render :show, status: :created, location: @vacante_aplicada }
      else
        format.html { render :new }
        format.json { render json: @vacante_aplicada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacante_aplicadas/1
  # PATCH/PUT /vacante_aplicadas/1.json
  def update
    respond_to do |format|
      if @vacante_aplicada.update(vacante_aplicada_params)
        User.update(@vacante_aplicada.user.id, :status =>  @vacante_aplicada.status)
        format.html { redirect_to root_path, notice: 'Vacante aplicada was successfully updated.' }
        format.json { render :show, status: :ok, location: @vacante_aplicada }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @vacante_aplicada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacante_aplicadas/1
  # DELETE /vacante_aplicadas/1.json
  def destroy

    @notifications = Notification.where(item_id: @vacante_aplicada.id).unviewed #destrir todas las notificaciones que sean de esta vacante
    if(@notifications)
      @notifications.destroy_all #destruye todas las notificaciones que tengan que ver con esta vacante
    end

    @vacante_aplicada.destroy
    respond_to do |format|
      format.html { redirect_to vacante_aplicadas_url, notice: 'Vacante aplicada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacante_aplicada
      @vacante_aplicada = VacanteAplicada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacante_aplicada_params
      params.require(:vacante_aplicada).permit(:user_id, :vacante_id , :status )
    end
end
