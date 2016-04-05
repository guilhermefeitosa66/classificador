class AddMedicToVideos < ActiveRecord::Migration
  def change
    add_reference :videos, :medic, index: true, foreign_key: true
  end
end
