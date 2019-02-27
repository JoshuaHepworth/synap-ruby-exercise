class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :organization_name
      t.string :organization_phone
      t.string :domain
      t.references :address, index: true
      t.references :user, index: true
      t.timestamps
    end
    add_foreign_key :address, :organizations, column: :address_id
    add_foreign_key :user, :organizations, column: :user_id 
  end
end
