class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :job_title
      t.string :email_address
      t.string :phone
      t.references :organization, index: true
      t.references :address, index: true
      # t.timestamps
    end
    # add_foreign_key :organization, :users, column: :organization_id 
    # add_foreign_key :address, :users, column: :address_id 
  end
end
