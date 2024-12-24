class CreateAdditionalServices < ActiveRecord::Migration[8.0]
  def change
    create_table :additional_services do |t|
      t.string :service_name
      t.float :service_value

      t.timestamps
    end
  end
end
