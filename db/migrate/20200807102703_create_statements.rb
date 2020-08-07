class CreateStatements < ActiveRecord::Migration[5.2]
  def change
    create_table :statements do |t|
      t.references :statement_type, foreign_key: true
      t.references :product, foreign_key: true
      t.datetime :statement_time
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
