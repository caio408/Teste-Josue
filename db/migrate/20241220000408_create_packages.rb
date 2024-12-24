class CreatePackages < ActiveRecord::Migration[8.0]
  def change
    create_table :packages do |t|
      t.string :package_name
      t.float :package_value

      t.timestamps
    end
  end
end
