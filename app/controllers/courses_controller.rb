class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :set_program, only: [:show, :edit, :update, :destroy]
  before_action :set_year, only: [:show, :edit, :update, :destroy]
  before_action :set_courses, only: [:destroy]

  # GET /courses
  # GET /courses.json
  def index
    #@courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @courses = Course.where(program_id: @program.id, year_id: @year.id)
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render action: 'show', status: :created, location: @course }
      else
        format.html { render action: 'new' }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      if @course.destroy
        format.html { redirect_to [@program, @year] }
      else
        format.html { redirect_to [@program, @year], notice: 'Could not delete course' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    def set_courses
      @courses = Course.where(program_id: @program.id, year_id: @year.id)
    end

    def set_program
      @program = Program.find(params[:program_id])
    end

    def set_year
      @year = Year.find(params[:year_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:id, :course_number, :course_title, :course_hours, :course_credits, :language, :term, :new_course)
    end

end
