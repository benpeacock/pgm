class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  # GET /answers
  # GET /answers.json
  def index
    @answers = Answer.all
    authorize @answer
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    authorize @answer
  end

  # GET /answers/new
  def new
    @answer = Answer.new
    authorize @answer
  end

  # GET /answers/1/edit
  def edit
    authorize @answer
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = Answer.new(answer_params)
    authorize @answer

    respond_to do |format|
      if @answer.save
        format.html { redirect_to @answer, notice: 'Answer was successfully created.' }
        format.js
        format.json { render json: @answer, status: :ok}
      else
        format.html { render action: 'new' }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    authorize @answer
    respond_to do |format|
      if @answer.update(answer_params)
        @answer.answer = @answer.answer.gsub(/\r\n?/, "<br/>").strip;
        format.html { redirect_to [@program, @year], notice: 'Answer was successfully updated.' }
        format.js {}
        format.json { render json: @answer, status: :ok}
      else
        format.html { render action: 'edit' }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    authorize @answer
    respond_to do |format|
      format.html { redirect_to answers_url }
      format.json { head :no_content }
    end
  end

  def answer_for_params
    @answer_id = params[:id]
    answer = Answer.find_by program_id: params[:program_id], question_id: params[:question_id], year_id: params[:year_id]
    @answer_text = answer.blank? ? "This value does not exist." : answer.answer
  end

  def new_for_params
    @question_id = params[:question_id]
    answer = Answer.find_by program_id: params[:program_id], question_id: params[:question_id], year_id: params[:year_id]
    @answer_whole = answer.blank? ? "This value does not exist." : answer.answer
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:answer, :question_id, :program_id, :year_id)
    end
end
