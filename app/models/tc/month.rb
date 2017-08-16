class TC::Month < ApplicationRecord
	scope :ordenados, ->{order('mes ASC')}

  
end
