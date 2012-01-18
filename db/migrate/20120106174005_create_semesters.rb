class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.date :start_time
      t.date :end_time
      t.string :name

      t.timestamps
    end
  end
end
