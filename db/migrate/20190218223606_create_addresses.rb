class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.references :organization, index: true, foreign_key: true {to_table: :addresses}
      t.references :user, index: true, foreign_key: true {to_table: :addresses}
      t.timestamps
    end
  end
end
