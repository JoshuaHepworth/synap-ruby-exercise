class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      # t.has_many :users, index: true
      t.string :organization_name
      t.string :organization_phone
      t.string :domain
      t.references :address, index: true, foreign_key: true {to_table: :organizations}
      t.references :user, index: true, foreign_key: true {to_table: :organizations}
      t.timestamps
    end
  end
end
