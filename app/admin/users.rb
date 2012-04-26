ActiveAdmin.register User do

  filter :user_name
  filter :first_name
  filter :last_name
  filter :email
  filter :created_at
  filter :updated_at

  index do
    column :user_name
    column :first_name
    column :last_name
    column :email
    default_actions
  end

  show do |u|
    attributes_table do
      row :first_name
      row :last_name
      row :user_name
      row :email
    end
    active_admin_comments
  end

  form do |f|
    f.inputs "User Details" do
      f.input :user_name
      f.input :first_name
      f.input :last_name
      f.input :email
    end
    f.buttons
  end

end
