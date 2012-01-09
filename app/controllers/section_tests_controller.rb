class SectionTestsController < ApplicationController
  # GET /section_tests
  # GET /section_tests.json
  def index
    @section_tests = SectionTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @section_tests }
    end
  end

  # GET /section_tests/1
  # GET /section_tests/1.json
  def show
    @section_test = SectionTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section_test }
    end
  end

  # GET /section_tests/new
  # GET /section_tests/new.json
  def new
    @section_test = SectionTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section_test }
    end
  end

  # GET /section_tests/1/edit
  def edit
    @section_test = SectionTest.find(params[:id])
  end

  # POST /section_tests
  # POST /section_tests.json
  def create
    @section_test = SectionTest.new(params[:section_test])

    respond_to do |format|
      if @section_test.save
        format.html { redirect_to @section_test, notice: 'Section test was successfully created.' }
        format.json { render json: @section_test, status: :created, location: @section_test }
      else
        format.html { render action: "new" }
        format.json { render json: @section_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /section_tests/1
  # PUT /section_tests/1.json
  def update
    @section_test = SectionTest.find(params[:id])

    respond_to do |format|
      if @section_test.update_attributes(params[:section_test])
        format.html { redirect_to @section_test, notice: 'Section test was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @section_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_tests/1
  # DELETE /section_tests/1.json
  def destroy
    @section_test = SectionTest.find(params[:id])
    @section_test.destroy

    respond_to do |format|
      format.html { redirect_to section_tests_url }
      format.json { head :ok }
    end
  end
end
