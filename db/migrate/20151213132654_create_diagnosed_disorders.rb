class CreateDiagnosedDisorders < ActiveRecord::Migration
  def change
    create_table :diagnosed_disorders do |t|
      t.references :disorder, index: true, foreign_key: true
      t.references :diagnosis, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
