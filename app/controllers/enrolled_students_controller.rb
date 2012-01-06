class EnrolledStudentsController < ApplicationController
  # GET /enrolled_students
  # GET /enrolled_students.json
  def index
    @enrolled_students = EnrolledStudent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enrolled_students }
    end
  end

  # GET /enrolled_students/1
  # GET /enrolled_students/1.json
  def show
    @enrolled_student = EnrolledStudent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enrolled_student }
    end
  end

  # GET /enrolled_students/new
  # GET /enrolled_students/new.json
  def new
    @enrolled_student = EnrolledStudent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enrolled_student }
    end
  end

  # GET /enrolled_students/1/edit
  def edit
    @enrolled_student = EnrolledStudent.find(params[:id])
  end

  # POST /enrolled_students
  # POST /enrolled_students.json
  def create
    @enrolled_student = EnrolledStudent.new(params[:enrolled_student])

    respond_to do |format|
      if @enrolled_student.save
        format.html { redirect_to @enrolled_student, notice: 'Enrolled student was successfully created.' }
        format.json { render json: @enrolled_student, status: :created, location: @enrolled_student }
      else
        format.html { render action: "new" }
        format.json { render json: @enrolled_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enrolled_students/1
  # PUT /enrolled_students/1.json
  def update
    @enrolled_student = EnrolledStudent.find(params[:id])

    respond_to do |format|
      if @enrolled_student.update_attributes(params[:enrolled_student])
        format.html { redirect_to @enrolled_student, notice: 'Enrolled student was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @enrolled_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrolled_students/1
  # DELETE /enrolled_students/1.json
  def destroy
    @enrolled_student = EnrolledStudent.find(params[:id])
    @enrolled_student.destroy

    respond_to do |format|
      format.html { redirect_to enrolled_students_url }
      format.json { head :ok }
    end
  end
end
