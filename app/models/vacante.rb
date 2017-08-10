class Vacante < ApplicationRecord
  belongs_to :admin
  scope :nuevos, ->{order("created_at desc")}
  scope :no_occupied, -> {where(occupied:false)}
  
  #belongs_to :job_area, class_name: "TC::Job_area"
  validates :periodo_de_practica ,presence: true
  validates :area, presence: true
  validates :planta, presence: true

  has_many :vacantes_aplicadas
    
end
