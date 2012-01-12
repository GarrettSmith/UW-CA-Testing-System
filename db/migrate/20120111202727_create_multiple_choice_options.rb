class CreateMultipleChoiceOptions < ActiveRecord::Migration
  def change
    create_table :multiple_choice_options do |t|
      t.references :option, :polymorphic => true
      t.boolean :solution
      t.string :value

      t.timestamps
    end
  end
end
