class AddAssociationsToSectionTest < ActiveRecord::Migration
  def change
    add_column :section_tests, :section_id, :integer
  end
end
