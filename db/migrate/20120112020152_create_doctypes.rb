class CreateDoctypes < ActiveRecord::Migration
  def change
    create_table :doctypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
