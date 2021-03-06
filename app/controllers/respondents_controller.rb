class RespondentsController < ApplicationController
  before_action :set_respondent, only: [:show, :edit, :update, :destroy]

  # GET /respondents
  # GET /respondents.json
  def index
    @respondents = Respondent.all
  end

  # GET /respondents/1
  # GET /respondents/1.json
  def show
  end

  # GET /respondents/new
  def new
    @respondent = Respondent.new
  end

  # GET /respondents/1/edit
  def edit
  end

  # POST /respondents
  # POST /respondents.json
  def create
    @respondent = Respondent.new(respondent_params)
    if @respondent.save
      redirect_to new_respondent_response_path(@respondent);
    else
      render :new;
    end
  end

  # PATCH/PUT /respondents/1
  # PATCH/PUT /respondents/1.json
  def update
    respond_to do |format|
      if @respondent.update(respondent_params)
        format.html { redirect_to @respondent, notice: 'Respondent was successfully updated.' }
        format.json { render :show, status: :ok, location: @respondent }
      else
        format.html { render :edit }
        format.json { render json: @respondent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /respondents/1
  # DELETE /respondents/1.json
  def destroy
    @respondent.destroy
    respond_to do |format|
      format.html { redirect_to respondents_url, notice: 'Respondent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_respondent
      @respondent = Respondent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def respondent_params
      params.fetch(:respondent).permit(:user_name, :user_email, :organization)
    end
end
