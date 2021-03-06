class SearchController < ApplicationController
  def create

    query = ""

    if(params[:keywordArea].present?)
      queryArea = "area = #{params[:keywordArea]} AND "
      query = query + queryArea
    end


    if(params[:keywordLocation].present?)
      queryLocation = "LOWER(location) LIKE '%#{params[:keywordLocation].downcase}%' AND "
      query = query + queryLocation
    end


    name = ""
    if(params[:keywordName].present?)
      name = params[:keywordName].downcase
    end

    query = query + "LOWER(name) LIKE '%#{name}%'"


  	#@cosas = Post.where("body LIKE ? OR usuario LIKE ?", palabra,palabra).decorate
    @vacantes = Vacante.where(query).nuevos.no_occupied.paginate(page:params[:page], per_page:15)

  	respond_to do |format|
  		format.html{redirect_to root_path}
  		format.json {render json: @cosas}
  		format.js
  	end

  end



  def search_students
    

    query = ""

    status = 1
    if(params[:keywordStatus].present?)
      status = params[:keywordStatus]
    end

    if(params[:keywordUniversidad].present?)
      queryUniversidad = "university = #{params[:keywordUniversidad]} AND "
      query = query + queryUniversidad
    end

    if(params[:keywordCarrera].present?)
      queryCarrera = "carrer = #{params[:keywordCarrera]} AND "
      query = query + queryCarrera
    end

    if(params[:keywordNombre].present?)
      queryNombre = "LOWER(name) LIKE '%#{params[:keywordNombre].downcase}%' AND "
      #queryNombre = "name LIKE '%#{params[:keywordNombre]}%' AND "
      query = query + queryNombre
    end

    if(params[:keywordApaterno].present?)
      queryApaterno = "LOWER(firs_last_name) LIKE '%#{params[:keywordApaterno].downcase}%' AND "
      query = query + queryApaterno
    end


    if(params[:keywordNAmaterno].present?)
      queryAmaterno = "LOWER(second_last_name) LIKE '%#{params[:keywordNAmaterno].downcase}%' AND "
      query = query + queryAmaterno
    end

    query = query + "status = #{status}"



    @usuarios = User.where(query).nuevos.paginate(page:params[:page], per_page:15)

    @how_many_usuarios = @usuarios.count 

    respond_to do |format|
      format.html{redirect_to root_path}
      format.json {render json: @usuarios}
      format.js
    end
    
  end




  def search_vacantes_Admin

    query = ""

    if(params[:keywordArea].present?)
      queryArea = "area = #{params[:keywordArea]} AND "
      query = query + queryArea
    end

    if(params[:keywordLocation].present?)
      queryLocation = "location LIKE '%#{params[:keywordLocation]}%' AND "
      query = query + queryLocation
    end

    if(params[:keywordOccupied].present?)
      queryOccupied = "occupied = '#{params[:keywordOccupied]}' AND "
      query = query + queryOccupied
    end

    admins = Admin.where("name LIKE '%#{params[:keywordAdmin]}%'").ids


    name = ""
    if(params[:keywordName].present?)
      name = params[:keywordName]
    end

    query = query + "name LIKE '%#{name}%'"


    #@vacantess = current_admin.vacantes.where(query).nuevos.paginate(page:params[:page], per_page:20)
    @vacantess = Vacante.where("#{query} AND admin_id in (?)", admins).nuevos.paginate(page:params[:page], per_page:20)  
    

    respond_to do |format|
      format.html{redirect_to root_path}
      format.json {render json: @cosas}
      format.js
    end
    
  end




  def search_evaluaciones_Admin

    query = ""

    usuarios = User.where("LOWER(name) LIKE '%#{params[:keywordUserName].downcase}%' AND LOWER(firs_last_name) LIKE '%#{params[:keywordUser_1_lastname].downcase}%' AND  LOWER(second_last_name) LIKE '%#{params[:keywordUser_2_lastname].downcase}%'").ids

    if(params[:keywordGlobalCandidate].present?)
      queryGlobarCandidate = "rank_global_candidate = #{params[:keywordGlobalCandidate]} AND "
      query = query + queryGlobarCandidate
    end


    if(params[:keywordCandidatoPotencial].present?)
      queryCandidatoPotencial = "candidato_potencial = '#{params[:keywordCandidatoPotencial]}' AND "
      query = query + queryCandidatoPotencial
    end


    if(params[:keywordAssessment].present?)
      queryAssessment = "assessment = '#{params[:keywordAssessment]}' AND "
      query = query + queryAssessment
    end




    #@evaluations = current_admin.evaluations.where("#{query} user_id in (?)" , usuarios).nuevos.paginate(page:params[:page], per_page:20)
    @evaluations = Evaluation.where("#{query} user_id in (?)" , usuarios).nuevos.paginate(page:params[:page], per_page:20)
    

    respond_to do |format|
      format.html{redirect_to root_path}
      format.json {render json: @cosas}
      format.js
    end
    
  end





  def search_vacantes_aplicadas_Admin

    usuarios = User.where("LOWER(name) LIKE '%#{params[:keywordUserName].downcase}%' AND LOWER(firs_last_name) LIKE '%#{params[:keywordUser_1_lastname].downcase}%' AND  LOWER(second_last_name) LIKE '%#{params[:keywordUser_2_lastname].downcase}%'").ids
    
    vacantes = Vacante.where("LOWER(name) LIKE '%#{params[:keywordVacanteName].downcase}%' ").ids



    @vacante_aplicadas = VacanteAplicada.where("user_id in (?) AND vacante_id in (?)" , usuarios , vacantes).nuevos.paginate(page:params[:page], per_page:20)
    

    respond_to do |format|
      format.html{redirect_to root_path}
      format.json {render json: @cosas}
      format.js
    end
    
  end



end


