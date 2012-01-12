class CreateMultipleChoiceAnswers < ActiveRecord::Migration
  def change
    create_table :multiple_choice_answers do |t|
      t.references :option, :polymorphic => true

      t.timestamps
    end
  end
end
