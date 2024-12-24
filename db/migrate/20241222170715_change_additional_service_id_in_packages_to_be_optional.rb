class ChangeAdditionalServiceIdInPackagesToBeOptional < ActiveRecord::Migration[8.0]
  def change
    change_column_null :packages, :additional_services_id, true
  end
end
