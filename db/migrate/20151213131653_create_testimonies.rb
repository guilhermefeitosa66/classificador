class CreateTestimonies < ActiveRecord::Migration
  def change
    create_table :testimonies do |t|
      t.string :title
      t.text :testimony
      t.references :disorder, index: true, foreign_key: true
      t.references :age_group, index: true, foreign_key: true
      t.references :gender, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
