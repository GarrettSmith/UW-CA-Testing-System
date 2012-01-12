class CreateTestFiles < ActiveRecord::Migration
  def change
    create_table :test_files do |t|
      t.string :type
      t.boolean :modifiable
      t.boolean :executable
      t.boolean :highlight_syntax
      t.string :path

      t.timestamps
    end
  end
end
