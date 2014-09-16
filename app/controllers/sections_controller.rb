class SectionsController < ApplicationController

  # GET /sections/1
  # GET /sections/1.json
  def show
    @section = Section.find(params[:id])
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_params
      params.require(:section).permit(:name, :tab_id, :position)
    end
end
