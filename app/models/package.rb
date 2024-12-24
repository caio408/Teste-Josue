class Package < ApplicationRecord
  # validações
  validates :package_name, presence: true

  belongs_to :plan, foreign_key: 'plans_id'
  belongs_to :additional_service, foreign_key: 'additional_services_id', optional: true

  before_save :set_value

  def calculate_value
    return package_value unless package_value.nil?

    plan_value = plan.plan_value || 0
    service_value = additional_service.service_value || 0

    plan_value + service_value
  end

  private

  def set_value
    self.package_value ||= calculate_value if plan.present?
  end
end
