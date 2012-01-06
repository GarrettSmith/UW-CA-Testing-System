class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :time_submitted

      t.timestamps
    end
  end
end
