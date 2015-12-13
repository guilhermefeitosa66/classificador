class CreatePacients < ActiveRecord::Migration
  def change
    create_table :pacients do |t|
      t.string :name
      t.date :birthday
      t.references :gender, index: true, foreign_key: true
      t.references :medic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
