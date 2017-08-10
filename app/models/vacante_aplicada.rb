class VacanteAplicada < ApplicationRecord
	include Notificable

	scope :nuevos, ->{order("created_at desc")}
	
	belongs_to :user
	belongs_to :vacante


	def statusDisponible?
	    if(self.status == 1)
	      return true
	    end

	    return false    
	end

	def statusContratado?
	    if(self.status == 3)
	      return true
	    end

	    return false    
	end


	def cualAdmin
		return self.vacante.admin.id
	end

	
end
