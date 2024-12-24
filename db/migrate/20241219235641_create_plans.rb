class CreatePlans < ActiveRecord::Migration[8.0]
  def change
    create_table :plans do |t|
      t.string :plan_name
      t.float :plan_value

      t.timestamps
    end
  end
end
