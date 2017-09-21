class GameController < ApplicationController

  before_action :authenticate_user!, only: [:home]

  def home

    @numero_preguntas = QuestionsFirstFilter.all.count

    #arreglo de las preguntas que ha contestado
    $global_questions ||= []
    
    $id_siguiente_pregunta = ([*1..@numero_preguntas] -$global_questions).sample

    if $id_siguiente_pregunta
      @random_question =  QuestionsFirstFilter.find($id_siguiente_pregunta)
      #$global_questions << params[:next_question]
    else
      @random_question =  QuestionsFirstFilter.first
    end

    if($global_questions.size >= 5)
      #obliga hacer el update sin checar las validaciones del update
      current_user.update_attribute( "game_finished", true)
      redirect_to gameOver_path
    end
    
  end


  def responder

  	respuesta_seleccionada = params[:respuesta_seleccionada]

  	@pregunta = QuestionsFirstFilter.find(params[:idPregunta])

  	if(@pregunta.respuesta_correcta == respuesta_seleccionada)

      @respuesta = AnswerQuestion.new(:respuesta =>  true , :user_id => current_user.id, :questions_first_filter_id => @pregunta.id)
  		@mensaje = "Correcto muy bien , pasemos a la siguiente"
  	else
      @respuesta = AnswerQuestion.new(:respuesta =>  false , :user_id => current_user.id, :questions_first_filter_id => @pregunta.id)
  		@mensaje = "Te equivocaste, la respuesta correcta es #{@pregunta.respuesta_correcta}"
  	end


  	respond_to do |format|
      if @respuesta.save

        $global_questions << $id_siguiente_pregunta
    		format.html{redirect_to root_path}
    		format.json {render json: @mensaje}
    		format.js

      else
        format.html{redirect_to root_path}
        format.json {render json: @mensaje}
        format.js { render :action => "not2Answers" }

      end

  	end
  	

  end



  def siguinte_pregunta

   
  	redirect_to gameHome_path

  	
  end




  def gameOver

    if(current_user.game_finished != true)
      current_user.update_attribute( "game_finished", true)
    end

    $global_questions = nil

    redirect_to edit_user_path(current_user),notice:"Completa tu perfil para ver las vacantes"

    
  end



end
