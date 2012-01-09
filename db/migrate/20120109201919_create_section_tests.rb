class CreateSectionTests < ActiveRecord::Migration
  def change
    create_table :section_tests do |t|
      t.string :name
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :time_submitted

      t.timestamps
    end
  end
end
