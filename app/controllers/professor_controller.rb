class ProfessorController < ApplicationController
  $professor_id = 1              #  This will be the ID of the currently signed in user.

  def home

    @recent_actions_amount = 5   #  The amount of recent actions to be displayed on page
    @active_tests_amount = 5     #  The amount of active tests to be displayed on page.
    @active_sections_amount = 5  #  The amount of active sections to be displayed on page.

    @professor = User.find($professor_id) #The ID of the currently signed in user will go here.
   #@recent_actions = Professor.findRecentActions($professorID, @recent_actions_amount) #This will find the most recent tests
    @active_tests = Professor.recent_tests($professor_id, @active_tests_amount) #This will find the recent active tests
    @marked_tests = Professor.marked_tests($professor_id, @active_tests_amount) # Finds if tests are marked. Will need to get professor to use same query as active tests, and then find if they are marked.
   #@active_sections = Professor.findActiveSections($professorID, @active_tests_amount)  #This will find the recent active sections


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @professor}
      end
  end

  def section
    @access = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @access }
    end

  end

  def test
  end

  def settings
  end

end
