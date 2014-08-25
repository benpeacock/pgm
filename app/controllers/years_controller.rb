class YearsController < ApplicationController
  before_action :set_year, only: [:show, :edit, :update, :destroy]
  before_action :set_years, only: [:index, :show, :edit]
  before_action :set_countries, only: [:show, :edit]
  before_action :set_program, only: [:show, :edit, :update]
  before_action :set_questions, only: [:show, :edit]

  # GET /years
  # GET /years.json
  def index
    @years = Year.all
  end

  # GET /years/1
  # GET /years/1.json
  def show
    @tabs = Tab.order(:position).all
    @answer = Answer.new
  end

  # GET /years/new
  def new
    @year = Year.new
  end

  # GET /years/1/edit
  def edit
  end

  # POST /years
  # POST /years.json
  def create
    @year = Year.new(year_params)

    respond_to do |format|
      if @year.save
        format.html { redirect_to @year, notice: 'Year was successfully created.' }
        format.json { render action: 'show', status: :created, location: @year }
      else
        format.html { render action: 'new' }
        format.json { render json: @year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /years/1
  # PATCH/PUT /years/1.json
  def update
    respond_to do |format|
      if @year.update(year_params)
        format.html { redirect_to @year, notice: 'Year was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /years/1
  # DELETE /years/1.json
  def destroy
    @year.destroy
    respond_to do |format|
      format.html { redirect_to years_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_year
      @year = Year.find(params[:id])
      authorize @year
    end

    def set_years
      @years = Year.all
    end

    def set_countries
      @countries = Country.all
    end

    def set_program
      @program = Program.find(params[:program_id])
    end

    def set_questions
      @questions = Question.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def year_params
      params.require(:year).permit(:id, :year)
    end
end
