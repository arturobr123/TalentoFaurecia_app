module VacantesHelper	

  def fechaBonita date
  	theDate = date.strftime("%b. %e, %Y")
  	theDate.html_safe
    
  end




end
