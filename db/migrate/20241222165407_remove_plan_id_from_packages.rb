class RemovePlanIdFromPackages < ActiveRecord::Migration[8.0]
  def change
    remove_column :packages, :plan_id, :integer
  end
end
