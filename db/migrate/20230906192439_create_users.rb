class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.integer :role
      t.references :hospital, null: false, foreign_key: true
      t.references :test_center, null: false, foreign_key: true

      t.timestamps
    end
  end
end
