class AddProfAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :office_number, :string
    add_column :users, :office_hours, :string
  end
end
