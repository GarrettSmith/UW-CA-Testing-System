ActiveAdmin.register Course do

  filter :name
  filter :number
  filter :department_code, :as => :select

  index do
    column :name
    column :number
    column :department_code
    default_actions
  end

  show :title => proc { "#{course.name}, #{course.department_code}-#{course.number}" } do
    attributes_table do
      row :name
      #row :description
      row :number
      row :department_code
    end
  end

end
