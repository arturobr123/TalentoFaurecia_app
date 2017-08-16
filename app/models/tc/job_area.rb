class TC::Job_area < ApplicationRecord
	scope :ordenados, ->{order('job_area ASC')} #orden alfabetico

  
end
