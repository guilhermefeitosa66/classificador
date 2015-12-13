class CreateMedics < ActiveRecord::Migration
  def change
    create_table :medics do |t|
      t.string :name
      t.string :email
      t.string :password
      t.references :expertise, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
