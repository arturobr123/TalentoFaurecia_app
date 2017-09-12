class AnswerQuestion < ApplicationRecord
  belongs_to :user
  belongs_to :questions_first_filter
end
