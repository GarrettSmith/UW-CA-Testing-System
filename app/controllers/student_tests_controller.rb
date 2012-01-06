class StudentTestsController < ApplicationController
  # GET /student_tests
  # GET /student_tests.json
  def index
    @student_tests = StudentTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_tests }
    end
  end

  # GET /student_tests/1
  # GET /student_tests/1.json
  def show
    @student_test = StudentTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_test }
    end
  end

  # GET /student_tests/new
  # GET /student_tests/new.json
  def new
    @student_test = StudentTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_test }
    end
  end

  # GET /student_tests/1/edit
  def edit
    @student_test = StudentTest.find(params[:id])
  end

  # POST /student_tests
  # POST /student_tests.json
  def create
    @student_test = StudentTest.new(params[:student_test])

    respond_to do |format|
      if @student_test.save
        format.html { redirect_to @student_test, notice: 'Student test was successfully created.' }
        format.json { render json: @student_test, status: :created, location: @student_test }
      else
        format.html { render action: "new" }
        format.json { render json: @student_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_tests/1
  # PUT /student_tests/1.json
  def update
    @student_test = StudentTest.find(params[:id])

    respond_to do |format|
      if @student_test.update_attributes(params[:student_test])
        format.html { redirect_to @student_test, notice: 'Student test was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_tests/1
  # DELETE /student_tests/1.json
  def destroy
    @student_test = StudentTest.find(params[:id])
    @student_test.destroy

    respond_to do |format|
      format.html { redirect_to student_tests_url }
      format.json { head :ok }
    end
  end
end
