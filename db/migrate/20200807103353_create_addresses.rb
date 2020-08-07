class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :city
      t.string :country
      t.string :email
      t.string :po_box
      t.references :addressable, polymorphic: true

      t.timestamps
    end
  end
end
