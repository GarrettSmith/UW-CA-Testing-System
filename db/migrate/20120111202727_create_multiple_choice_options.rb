class CreateMultipleChoiceOptions < ActiveRecord::Migration
  def change
    create_table :multiple_choice_options do |t|
      t.string :value

      t.timestamps
    end
  end
end
