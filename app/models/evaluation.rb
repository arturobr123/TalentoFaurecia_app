class Evaluation < ApplicationRecord

  scope :nuevos, ->{order("created_at desc")}

  
  belongs_to :admin
  belongs_to :user


end
