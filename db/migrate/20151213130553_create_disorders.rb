class CreateDisorders < ActiveRecord::Migration
  def change
    create_table :disorders do |t|
      t.string :name
      t.text :description
      t.references :disorder_group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
