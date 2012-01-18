class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :number
      t.string :department_code

      t.timestamps
    end
  end
end
