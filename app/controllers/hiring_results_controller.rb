class HiringResultsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]


  def index
    @assessments = Assessment.paginate(:page => params[:page], :per_page => 1)
  end


  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def hiring_results_params
      params.fetch(:hiring_results, {})
    end
end
