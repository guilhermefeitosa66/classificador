class CreatePresentedTestimonies < ActiveRecord::Migration
  def change
    create_table :presented_testimonies do |t|
      t.references :pacient, index: true, foreign_key: true
      t.references :testimony, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
