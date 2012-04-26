ActiveAdmin.register Semester do

  filter :name
  filter :start_time
  filter :end_time

  index do
    column :name
    column :start_time
    column :end_time
    default_actions
  end

  show :title => proc { semester.name } do
    attributes_table do
      row :name
      row :start_time
      row :end_time
    end
  end

  form do |f|
    f.inputs "Semester Details" do
      f.input :name
      f.input :start_time, :as => :datepicker
      f.input :end_time, :as => :datepicker
    end
    f.buttons
  end

end
