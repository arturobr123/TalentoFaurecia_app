class TC::Plant < ApplicationRecord
	scope :ordenados, ->{order('planta ASC')}

  
end