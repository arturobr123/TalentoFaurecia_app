class TC::Carrer < ApplicationRecord
	scope :ordenados, ->{order('carrera ASC')}

  
end
