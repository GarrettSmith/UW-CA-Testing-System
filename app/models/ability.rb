# Defines the abilities of users in the system.
class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    # Global
    can :read, Course
    can :read, Semester

    # Manage own account
    can :update_password, User, :user_id => user.id
    can :update_email, User, :user_id => user.id
    can :update_recieve_email, User, :user_id => user.id

    # Admins can do anything they want
    if user.admin?
      can :manage, :all
    end

    # Profs
    if user.professor?
      prof = user.professor

      # Can update owned sections
      can :update, Section, :professor_id => prof.id
      can :read, Section

      # Can manager tests for their sections
      can :manage, SectionTest, :section => { :prof_id => prof.id }
      can :manage, Question, 
        :section_test => { :section => { :prof_id => prof.id } }
    end
    
    # Students
    if user.student?
      stu = user.student

      # Can view enrolled sections
      can :read, Section do |section|
        section.enrolled_students.include?(stu.enrolled_student)
      end

      # Can create and update student_tests for active section_tests
      # they are enrolled in.
      can :manage, StudentTest do |test|
        test.active? &&
        stu.sections.includes?(test.section)
      end
      cannot :destroy, StudentTest
      
    end
  end
end
