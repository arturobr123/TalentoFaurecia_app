class TC::University < ApplicationRecord
	scope :ordenados, ->{order('universidad ASC')}

  
end
