class CreateDisorderGroups < ActiveRecord::Migration
  def change
    create_table :disorder_groups do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
