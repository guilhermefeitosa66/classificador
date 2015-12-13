class CreateDiagnoses < ActiveRecord::Migration
  def change
    create_table :diagnoses do |t|
      t.text :obs
      t.date :date
      t.references :pacient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
