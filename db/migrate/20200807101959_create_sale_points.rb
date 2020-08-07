class CreateSalePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :sale_points do |t|
      t.string :name
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
