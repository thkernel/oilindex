class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions do |t|
      t.string :uid
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
