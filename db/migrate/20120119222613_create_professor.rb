class CreateProfessor < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :office_number
      t.integer :user_id

      t.timestamps
    end
  end
end
