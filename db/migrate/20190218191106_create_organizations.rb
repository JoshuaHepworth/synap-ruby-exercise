class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :organization_name
      t.string :organization_phone
      t.string :domain
      t.integer :people_count
      t.references :address, index: true
      t.references :user, index: true
    end
  end
end
