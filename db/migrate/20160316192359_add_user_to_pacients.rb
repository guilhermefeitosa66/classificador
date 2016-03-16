class AddUserToPacients < ActiveRecord::Migration
  def change
    add_reference :pacients, :user, index: true, foreign_key: true
  end
end
