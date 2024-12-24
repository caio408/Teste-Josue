class RemoveAdditionalServiceIdFromPackages < ActiveRecord::Migration[8.0]
  def change
    remove_column :packages, :additional_service_id, :integer
  end
end
