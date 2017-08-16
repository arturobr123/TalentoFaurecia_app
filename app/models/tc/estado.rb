class TC::Estado < ApplicationRecord
	scope :ordenados, ->{order('estado ASC')}
  
end
