class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :first_name
      t.string :last_name
      t.boolean :admin
      t.boolean :recieve_email
      t.string :password

      t.timestamps
    end
  end
end
