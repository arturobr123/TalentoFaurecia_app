class Vacante < ApplicationRecord
  belongs_to :admin
  scope :nuevos, ->{order("created_at desc")}
  scope :no_occupied, -> {where(occupied:false)}
  
  #belongs_to :job_area, class_name: "TC::Job_area"
  validates :area, presence: true
  validates :planta, presence: true

  validates :mes_inicio, presence: true
  validates :mes_fin, presence: true

  validates :email_hiring_manager, presence: true

  has_many :vacantes_aplicadas
    
end
