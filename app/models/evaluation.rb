class Evaluation < ApplicationRecord

  scope :nuevos, ->{order("created_at desc")}

  
  belongs_to :admin
  belongs_to :user

  validates :rank_global_candidate, presence: true
  validates :english_level, presence: true


end
