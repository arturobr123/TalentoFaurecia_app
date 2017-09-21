class AnswerQuestion < ApplicationRecord

  scope :nuevos, ->{order("created_at desc")}

  belongs_to :user
  belongs_to :questions_first_filter

  #evita que haya duplicados. deden ser unicos tanto el user_id como el questions_first_filter_id
  #es decir, no puede haber otro 1,2  u otro 3,5 , etc
  validates_uniqueness_of :user_id, :scope => :questions_first_filter_id


end
