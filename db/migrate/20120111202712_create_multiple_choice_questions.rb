class CreateMultipleChoiceQuestions < ActiveRecord::Migration
  def change
    create_table :multiple_choice_questions do |t|
      t.references :option, :polymorphic => true
      t.integer :solution_id

      t.timestamps
    end
  end
end
