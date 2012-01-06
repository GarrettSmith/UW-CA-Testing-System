class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.float :possible_marks
      t.text :text
      t.boolean :bonus
      t.string :name

      t.timestamps
    end
  end
end
