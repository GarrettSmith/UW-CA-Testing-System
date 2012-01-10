class AddAssociationsToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :test_id, :integer
  end
end
