class Plan < ApplicationRecord
  validates :plan_value, presence: true
  has_many :package
end
