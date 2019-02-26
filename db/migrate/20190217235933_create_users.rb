class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :job_title
      t.string :email_address
      t.string :phone
      # t.references :organization, index: true, foreign_key: true
      # t.references :address, index: true, foreign_key: true 
      t.timestamps
    end
  end
end
