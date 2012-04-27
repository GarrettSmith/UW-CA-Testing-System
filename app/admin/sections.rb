ActiveAdmin.register Section do
  
  filter :course
  filter :semester
  filter :number, :label => "Section number"
  filter :professor

  show :label => proc { section.full_course_number } do
    attributes_table do
      row :course
      row :semester
      row :room_number
    end
  end
end
