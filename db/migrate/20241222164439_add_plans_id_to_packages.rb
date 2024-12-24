class AddPlansIdToPackages < ActiveRecord::Migration[8.0]
  def change
    add_column :packages, :plan_id, :integer
    add_index :packages, :plan_id
  end
end
