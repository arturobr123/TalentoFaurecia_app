class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  scope :nuevos, ->{order("created_at desc")}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :evaluations 
  #validates :sexo ,inclusion: {in:["F", "M", "No quiero contestar"]}
  has_many :vacante_aplicadas

  has_many :notifications

  has_many :answer_questions

  has_many :evaluation_hiring_managers

  validates :university, presence: true , :on => :update
  validates :carrer, presence: true , :on => :update
  validates :estado_residencia, presence: true , :on => :update
  validates :interest_area1, presence: true , :on => :update
  validates :phone, presence: true , :on => :update

  validates :name, presence: true, length: {in: 3..50}
  validates :firs_last_name, presence: true
  validates :second_last_name, presence: true

  has_attached_file :CV

  #pdf, .doc , .docx
  validates_attachment_content_type :CV,:content_type => ['application/pdf','application/msword','application/vnd.openxmlformats-officedocument.wordprocessingml.document']



end
