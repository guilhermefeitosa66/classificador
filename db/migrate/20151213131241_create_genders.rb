class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
